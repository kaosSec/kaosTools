/*
	MYGART Obfuscator
	VBScript Obfuscator
*/
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.Base64;
import java.util.Random;
public class RanNam {
    public static String gen() {
        String alphabet = "abcdefghijklmnopqrstuvwxyz";
        Random random = new Random();
        int length = random.nextInt(10) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(alphabet.length());
            char randomChar = alphabet.charAt(index);
            sb.append(randomChar);
        }
        return sb.toString();
    }
    public static String gen_len(int len) {
        String alphabet = "abcdefghijklmnopqrstuvwxyz";
        Random random = new Random();
        int length = random.nextInt(len) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(alphabet.length());
            char randomChar = alphabet.charAt(index);
            sb.append(randomChar);
        }
        return sb.toString();
    }
}
public class RandomVBS {
    private static final String[] VBSCRIPT_STATEMENTS = {
        "' This is a comment",
        "Dim " + RanNam.gen_len(14) + " = " RanNam.gen_len(44),
        "' TODO: Add some code here",
        "' This statement does nothing",
        "Call MsgBox(\"Hello, world!\")",
        "' This is another comment"
    };
    public static String Rando(existingVBScript) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        String[] lines = existingVBScript.split("\n");
        for (String line : lines) {
            sb.append(line);
            sb.append("\n");
            int randomIndex = random.nextInt(VBSCRIPT_STATEMENTS.length);
            sb.append(VBSCRIPT_STATEMENTS[randomIndex]);
            sb.append("\n");
        }
        return sb.toString();
    }   
}
public class B64E {
    public static String encode(String input) {
        byte[] encodedBytes = Base64.getEncoder().encode(input.getBytes());
        String encodedString = new String(encodedBytes);
        return encodedString;
    }   
}
public class Mygart_Obfuscator
{
	char variabls[] = "";
	private static void buzz_bee(sb) {
		String cha = B64E.encode(c)
		String f = RanNam.gen()
		variabls.append(f)
		sb.append(RandomVBS.Rando(cha));
		sb.append(RandomVBS.Rando(cha));
		sb.append(f + " = " + cha);
		sb.append(RandomVBS.Rando(cha));
		sb.append(RandomVBS.Rando(cha));
	}
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a string:");
        String input = scanner.nextLine();
        String encoded = encodeString(input);
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter("output.MYGART"));
            writer.write(encoded);
            writer.close();
            System.out.println("Output written to output.MYGART");
        } catch (IOException e) {
            System.out.println("Error writing output to file: " + e.getMessage());
        }
    }
    public static String encodeString(String input) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            switch (c) {
                default:
					buzz_bee()
                    break;
            }
        }
		for (int i = 0; i < variabls.length(); i++) {
			String choochoo = variabls.charAt(i);
			sb.append("dothis" + i + " = objSystem.Base64Decode(" + choochoo + ")");
			sb.append("Eval dothis" + i);
		}
        return sb.toString();
    }
}
