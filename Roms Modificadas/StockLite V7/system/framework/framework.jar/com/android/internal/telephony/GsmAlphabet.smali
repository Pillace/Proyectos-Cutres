.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field private static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field private static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field private static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 1065
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1258
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1391
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1393
    .local v0, r:Landroid/content/res/Resources;
    const-string v1, "TUR"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    const-string v1, "TRC"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 1394
    :cond_cd
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1401
    :goto_d6
    const v1, 0x1070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .end local v0           #r:Landroid/content/res/Resources;
    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1402
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v5, v0

    .line 1403
    .local v5, numTables:I
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v4, v0

    .line 1404
    .local v4, numShiftTables:I
    if-eq v5, v4, :cond_109

    .line 1405
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: language tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != shift tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_109
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    if-lez v0, :cond_17a

    .line 1410
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1416
    :goto_119
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1417
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_11f
    if-ge v2, v5, :cond_182

    .line 1418
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v0, v2

    .line 1420
    .local v6, table:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 1421
    .local v7, tableLen:I
    if-eqz v7, :cond_157

    const/16 v0, 0x80

    if-eq v7, v0, :cond_157

    .line 1422
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_157
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1427
    .local v1, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1428
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .local v3, j:I
    :goto_162
    if-ge v3, v7, :cond_17e

    .line 1429
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1430
    .local v0, c:C
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_162

    .line 1398
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #numShiftTables:I
    .end local v5           #numTables:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    .local v0, r:Landroid/content/res/Resources;
    :cond_16f
    const v1, 0x1070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    goto/16 :goto_d6

    .line 1413
    .end local v0           #r:Landroid/content/res/Resources;
    .restart local v4       #numShiftTables:I
    .restart local v5       #numTables:I
    :cond_17a
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_119

    .line 1417
    .restart local v1       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #table:Ljava/lang/String;
    .restart local v7       #tableLen:I
    :cond_17e
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_11f

    .line 1434
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    :cond_182
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1435
    const/4 v0, 0x0

    .end local v2           #i:I
    .restart local v0       #i:I
    move v2, v0

    .end local v0           #i:I
    .end local v5           #numTables:I
    .restart local v2       #i:I
    :goto_188
    if-ge v2, v4, :cond_1e0

    .line 1436
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v5, v0, v2

    .line 1438
    .local v5, shiftTable:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1439
    .local v6, shiftTableLen:I
    if-eqz v6, :cond_1c0

    const/16 v0, 0x80

    if-eq v6, v0, :cond_1c0

    .line 1440
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language shift tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_1c0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1445
    .local v1, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1446
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    :goto_1cb
    if-ge v3, v6, :cond_1dc

    .line 1447
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1448
    .local v0, c:C
    const/16 v7, 0x20

    if-eq v0, v7, :cond_1d8

    .line 1449
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1446
    :cond_1d8
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_1cb

    .line 1435
    :cond_1dc
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_188

    .line 1688
    .end local v1           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v5           #shiftTable:Ljava/lang/String;
    .end local v6           #shiftTableLen:I
    :cond_1e0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1689
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1690
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1691
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1694
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    .line 1695
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1698
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    .line 1699
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1701
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    .line 1702
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    .line 1706
    const/4 v0, 0x0

    .line 1708
    .end local v2           #i:I
    .restart local v0       #i:I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1711
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1712
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1715
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1716
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1717
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1718
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1726
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1727
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1728
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1729
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1733
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1734
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v3, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1738
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1739
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1744
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1745
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1746
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1763
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1781
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1810
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1812
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1815
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1825
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1827
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1829
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1832
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1840
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #i:I
    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7b

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7d

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1849
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x20ac

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc7

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x130

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1861
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1863
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x130

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1878
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc1

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xda

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xd4

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1895
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc0

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1897
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1899
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xda

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc3

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1901
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xd5

    const/16 v2, 0x5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1902
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc2

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1904
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1905
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1906
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1907
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1908
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1910
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a6

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1911
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x393

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1912
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a9

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1913
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1914
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a8

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1915
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a3

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x398

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1919
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1920
    .local v1, size:I
    const/4 v0, 0x0

    .end local v4           #numShiftTables:I
    .local v0, j:I
    :goto_8d3
    if-ge v0, v1, :cond_8e9

    .line 1921
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d3

    .line 1924
    :cond_8e9
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1925
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_8f0
    if-ge v0, v1, :cond_906

    .line 1926
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1925
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f0

    .line 1930
    :cond_906
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1931
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_90d
    if-ge v0, v1, :cond_923

    .line 1932
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1931
    add-int/lit8 v0, v0, 0x1

    goto :goto_90d

    .line 1935
    :cond_923
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1936
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_92a
    if-ge v0, v1, :cond_940

    .line 1937
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1936
    add-int/lit8 v0, v0, 0x1

    goto :goto_92a

    .line 1940
    :cond_940
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1941
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_947
    if-ge v0, v1, :cond_95d

    .line 1942
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1941
    add-int/lit8 v0, v0, 0x1

    goto :goto_947

    .line 1946
    :cond_95d
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .end local v1           #size:I
    move-result v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1947
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 12
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 787
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v1, v1

    add-int/2addr v0, v1

    if-nez v0, :cond_3f

    .line 788
    new-instance v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 789
    .local v0, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result p0

    .line 790
    .local p0, septets:I
    const/4 p1, -0x1

    if-ne p0, p1, :cond_19

    .line 791
    .end local p1
    const/4 p0, 0x0

    .line 918
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local p0           #septets:I
    :goto_18
    return-object p0

    .line 793
    .restart local v0       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local p0       #septets:I
    :cond_19
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 794
    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 795
    const/16 p1, 0xa0

    if-le p0, p1, :cond_35

    .line 796
    add-int/lit16 p1, p0, 0x98

    div-int/lit16 p1, p1, 0x99

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 798
    iget p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 p1, p1, 0x99

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 804
    .end local p0           #septets:I
    :goto_30
    const/4 p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move-object p0, v0

    .line 805
    goto :goto_18

    .line 801
    .restart local p0       #septets:I
    :cond_35
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 802
    const/16 p1, 0xa0

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_30

    .line 808
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .local p0, s:Ljava/lang/CharSequence;
    .restart local p1
    :cond_3f
    sget v5, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 809
    .local v5, maxSingleShiftCode:I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 813
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_59
    if-ge v2, v3, :cond_75

    aget v1, v0, v2

    .line 816
    .local v1, i:I
    if-eqz v1, :cond_71

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 817
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_71
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_59

    .line 821
    :cond_75
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 823
    .local v7, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .local v1, i:I
    :goto_7b
    if-ge v1, v7, :cond_107

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_107

    .line 824
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 825
    .local v0, c:C
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_96

    .line 826
    const-string v0, "GSM"

    .end local v0           #c:C
    const-string v2, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_92
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_7b

    .line 830
    .local v0, c:C
    :cond_96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 831
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v6, v6, v8

    const/4 v8, -0x1

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 832
    .local v6, tableIndex:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_f2

    .line 834
    const/4 v6, 0x0

    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .local v8, table:I
    :goto_b6
    if-gt v8, v5, :cond_f0

    .line 835
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v6, v6, v8

    const/4 v9, -0x1

    if-eq v6, v9, :cond_dd

    .line 836
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v6, v8

    const/4 v9, -0x1

    invoke-virtual {v6, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 837
    .local v6, shiftTableIndex:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_e7

    .line 838
    if-eqz p1, :cond_e1

    .line 840
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 841
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 834
    :cond_dd
    :goto_dd
    add-int/lit8 v6, v8, 0x1

    .end local v8           #table:I
    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .restart local v8       #table:I
    goto :goto_b6

    .line 844
    .local v6, shiftTableIndex:I
    :cond_e1
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    const/4 v9, -0x1

    aput v9, v6, v8

    goto :goto_dd

    .line 848
    .restart local v6       #shiftTableIndex:I
    :cond_e7
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x2

    aput v9, v6, v8

    goto :goto_dd

    :cond_f0
    move v3, v8

    .line 834
    .end local v8           #table:I
    .local v3, table:I
    goto :goto_9a

    .line 854
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v6, tableIndex:I
    :cond_f2
    const/4 v6, 0x0

    .local v6, table:I
    :goto_f3
    if-gt v6, v5, :cond_19d

    .line 855
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v8, v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_104

    .line 856
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v9, v8, v6

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v6

    .line 854
    :cond_104
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 864
    .end local v0           #c:C
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v6           #table:I
    :cond_107
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v7           #sz:I
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 865
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const p0, 0x7fffffff

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 866
    .end local p0           #s:Ljava/lang/CharSequence;
    const/4 p0, 0x1

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 867
    const v0, 0x7fffffff

    .line 868
    .local v0, minUnencodableCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #minUnencodableCount:I
    .end local v4           #lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v1, minUnencodableCount:I
    :cond_11c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 869
    .local v0, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v2, 0x0

    .local v2, shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .local v6, shiftTable:I
    :goto_12a
    if-gt v6, v5, :cond_11c

    .line 870
    iget-object v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v3, v2, v6

    .line 871
    .local v3, septets:I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_137

    .line 869
    :cond_133
    :goto_133
    add-int/lit8 v2, v6, 0x1

    .end local v6           #shiftTable:I
    .restart local v2       #shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .restart local v6       #shiftTable:I
    goto :goto_12a

    .line 875
    :cond_137
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v2, :cond_17c

    if-eqz v6, :cond_17c

    .line 876
    const/16 v2, 0x8

    .local v2, udhLength:I
    move v8, v2

    .line 884
    .end local v2           #udhLength:I
    .local v8, udhLength:I
    :goto_140
    add-int v2, v3, v8

    const/16 v4, 0xa0

    if-le v2, v4, :cond_188

    .line 885
    if-nez v8, :cond_19b

    .line 886
    const/4 v2, 0x1

    .line 888
    .end local v8           #udhLength:I
    .restart local v2       #udhLength:I
    :goto_149
    add-int/lit8 v8, v2, 0x6

    .line 889
    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    const/16 v2, 0xa0

    sub-int v4, v2, v8

    .line 890
    .local v4, septetsPerMessage:I
    add-int v2, v3, v4

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    div-int/2addr v2, v4

    .line 891
    .local v2, msgCount:I
    mul-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 897
    .local v4, septetsRemaining:I
    :goto_156
    iget-object v8, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .end local v8           #udhLength:I
    aget v8, v8, v6

    .line 898
    .local v8, unencodableCount:I
    if-eqz p1, :cond_15e

    if-gt v8, v1, :cond_133

    .line 901
    :cond_15e
    if-eqz p1, :cond_162

    if-lt v8, v1, :cond_16e

    :cond_162
    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-lt v2, v9, :cond_16e

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v2, v9, :cond_133

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v4, v9, :cond_133

    .line 904
    :cond_16e
    move v1, v8

    .line 905
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 906
    iput v3, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 907
    iput v4, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 908
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .end local v2           #msgCount:I
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 909
    iput v6, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_133

    .line 877
    .end local v4           #septetsRemaining:I
    .end local v8           #unencodableCount:I
    :cond_17c
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v2, :cond_182

    if-eqz v6, :cond_185

    .line 878
    :cond_182
    const/4 v2, 0x5

    .local v2, udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .local v8, udhLength:I
    goto :goto_140

    .line 880
    .end local v8           #udhLength:I
    :cond_185
    const/4 v2, 0x0

    .restart local v2       #udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    goto :goto_140

    .line 893
    :cond_188
    const/4 v2, 0x1

    .line 894
    .local v2, msgCount:I
    const/16 v4, 0xa0

    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    .restart local v4       #septetsRemaining:I
    goto :goto_156

    .line 914
    .end local v0           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v2           #msgCount:I
    .end local v3           #septets:I
    .end local v4           #septetsRemaining:I
    .end local v6           #shiftTable:I
    .end local v8           #udhLength:I
    :cond_18e
    iget p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .end local p0           #i$:Ljava/util/Iterator;
    const p1, 0x7fffffff

    if-ne p0, p1, :cond_198

    .line 915
    .end local p1
    const/4 p0, 0x0

    goto/16 :goto_18

    :cond_198
    move-object p0, v7

    .line 918
    goto/16 :goto_18

    .restart local v0       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .restart local v3       #septets:I
    .restart local v6       #shiftTable:I
    .restart local v8       #udhLength:I
    .restart local p0       #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_19b
    move v2, v8

    .end local v8           #udhLength:I
    .local v2, udhLength:I
    goto :goto_149

    .local v0, c:C
    .local v1, i:I
    .local v2, i$:Ljava/util/Iterator;
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v6, table:I
    .local v7, sz:I
    .local p0, s:Ljava/lang/CharSequence;
    :cond_19d
    move v3, v6

    .end local v6           #table:I
    .local v3, table:I
    goto/16 :goto_9a
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 100
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 103
    :goto_8
    return v1

    .line 101
    :catch_9
    move-exception v0

    .line 103
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_8
.end method

.method public static charToGsm(CZ)I
    .registers 7
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 123
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 125
    .local v0, ret:I
    if-ne v0, v2, :cond_2c

    .line 126
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 128
    if-ne v0, v2, :cond_29

    .line 129
    if-eqz p1, :cond_20

    .line 130
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 132
    :cond_20
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 139
    :goto_28
    return v1

    .line 135
    :cond_29
    const/16 v1, 0x1b

    goto :goto_28

    :cond_2c
    move v1, v0

    .line 139
    goto :goto_28
.end method

.method public static charToGsmExtended(C)I
    .registers 6
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 153
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 155
    .local v0, ret:I
    if-ne v0, v2, :cond_17

    .line 156
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 159
    :goto_16
    return v1

    :cond_17
    move v1, v0

    goto :goto_16
.end method

.method public static convertEachCharacter(C)C
    .registers 5
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 1456
    move v0, p0

    .line 1459
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_14

    .line 1462
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_15

    .line 1463
    move v0, p0

    .line 1472
    :cond_14
    :goto_14
    return v0

    .line 1464
    :cond_15
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 1465
    move v0, p0

    goto :goto_14

    .line 1468
    :cond_1f
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_14
.end method

.method private static convertNonGSMCharacter(C)C
    .registers 8
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v6, "temp char :"

    const-string/jumbo v5, "ro.csc.sales_code"

    .line 1480
    move v0, p0

    .line 1481
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1482
    sparse-switch v0, :sswitch_data_234

    .line 1648
    const-string v1, "XEH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_60

    const-string v1, "PAN"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_60

    const-string v1, "TMH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_60

    const-string v1, "VDH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_223

    .line 1652
    :cond_60
    sparse-switch v0, :sswitch_data_3e6

    .line 1679
    :cond_63
    :goto_63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1681
    return v0

    .line 1494
    :sswitch_7d
    const/16 v0, 0x61

    goto :goto_63

    .line 1495
    :sswitch_80
    const/16 v0, 0x61

    goto :goto_63

    .line 1496
    :sswitch_83
    const/16 v0, 0x61

    goto :goto_63

    .line 1497
    :sswitch_86
    const/16 v0, 0x61

    goto :goto_63

    .line 1498
    :sswitch_89
    const/16 v0, 0x61

    goto :goto_63

    .line 1500
    :sswitch_8c
    const/16 v0, 0x41

    goto :goto_63

    .line 1501
    :sswitch_8f
    const/16 v0, 0x41

    goto :goto_63

    .line 1502
    :sswitch_92
    const/16 v0, 0x41

    goto :goto_63

    .line 1503
    :sswitch_95
    const/16 v0, 0x41

    goto :goto_63

    .line 1504
    :sswitch_98
    const/16 v0, 0x41

    goto :goto_63

    .line 1505
    :sswitch_9b
    const/16 v0, 0x41

    goto :goto_63

    .line 1507
    :sswitch_9e
    const/16 v0, 0x63

    goto :goto_63

    .line 1508
    :sswitch_a1
    const/16 v0, 0x63

    goto :goto_63

    .line 1509
    :sswitch_a4
    const/16 v0, 0x63

    goto :goto_63

    .line 1511
    :sswitch_a7
    const/16 v0, 0x43

    goto :goto_63

    .line 1512
    :sswitch_aa
    const/16 v0, 0x43

    goto :goto_63

    .line 1514
    :sswitch_ad
    const/16 v0, 0x64

    goto :goto_63

    .line 1516
    :sswitch_b0
    const/16 v0, 0x44

    goto :goto_63

    .line 1518
    :sswitch_b3
    const/16 v0, 0x65

    goto :goto_63

    .line 1519
    :sswitch_b6
    const/16 v0, 0x65

    goto :goto_63

    .line 1520
    :sswitch_b9
    const/16 v0, 0x65

    goto :goto_63

    .line 1521
    :sswitch_bc
    const/16 v0, 0x65

    goto :goto_63

    .line 1522
    :sswitch_bf
    const/16 v0, 0x65

    goto :goto_63

    .line 1524
    :sswitch_c2
    const/16 v0, 0x45

    goto :goto_63

    .line 1525
    :sswitch_c5
    const/16 v0, 0x45

    goto :goto_63

    .line 1526
    :sswitch_c8
    const/16 v0, 0x45

    goto :goto_63

    .line 1527
    :sswitch_cb
    const/16 v0, 0x45

    goto :goto_63

    .line 1528
    :sswitch_ce
    const/16 v0, 0x45

    goto :goto_63

    .line 1529
    :sswitch_d1
    const/16 v0, 0x45

    goto :goto_63

    .line 1531
    :sswitch_d4
    const/16 v0, 0x67

    goto :goto_63

    .line 1533
    :sswitch_d7
    const/16 v0, 0x47

    goto :goto_63

    .line 1535
    :sswitch_da
    const/16 v0, 0x69

    goto :goto_63

    .line 1536
    :sswitch_dd
    const/16 v0, 0x69

    goto :goto_63

    .line 1537
    :sswitch_e0
    const/16 v0, 0x69

    goto :goto_63

    .line 1538
    :sswitch_e3
    const/16 v0, 0x69

    goto/16 :goto_63

    .line 1539
    :sswitch_e7
    const/16 v0, 0x69

    goto/16 :goto_63

    .line 1541
    :sswitch_eb
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1542
    :sswitch_ef
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1543
    :sswitch_f3
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1544
    :sswitch_f7
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1545
    :sswitch_fb
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1546
    :sswitch_ff
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1548
    :sswitch_103
    const/16 v0, 0x6c

    goto/16 :goto_63

    .line 1549
    :sswitch_107
    const/16 v0, 0x6c

    goto/16 :goto_63

    .line 1550
    :sswitch_10b
    const/16 v0, 0x6c

    goto/16 :goto_63

    .line 1552
    :sswitch_10f
    const/16 v0, 0x4c

    goto/16 :goto_63

    .line 1553
    :sswitch_113
    const/16 v0, 0x4c

    goto/16 :goto_63

    .line 1554
    :sswitch_117
    const/16 v0, 0x4c

    goto/16 :goto_63

    .line 1556
    :sswitch_11b
    const/16 v0, 0x6e

    goto/16 :goto_63

    .line 1557
    :sswitch_11f
    const/16 v0, 0x6e

    goto/16 :goto_63

    .line 1559
    :sswitch_123
    const/16 v0, 0x4e

    goto/16 :goto_63

    .line 1560
    :sswitch_127
    const/16 v0, 0x4e

    goto/16 :goto_63

    .line 1562
    :sswitch_12b
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1563
    :sswitch_12f
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1564
    :sswitch_133
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1565
    :sswitch_137
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1566
    :sswitch_13b
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1568
    :sswitch_13f
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1569
    :sswitch_143
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1570
    :sswitch_147
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1571
    :sswitch_14b
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1572
    :sswitch_14f
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1573
    :sswitch_153
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1575
    :sswitch_157
    const/16 v0, 0x72

    goto/16 :goto_63

    .line 1576
    :sswitch_15b
    const/16 v0, 0x72

    goto/16 :goto_63

    .line 1578
    :sswitch_15f
    const/16 v0, 0x52

    goto/16 :goto_63

    .line 1579
    :sswitch_163
    const/16 v0, 0x52

    goto/16 :goto_63

    .line 1581
    :sswitch_167
    const/16 v0, 0x73

    goto/16 :goto_63

    .line 1582
    :sswitch_16b
    const/16 v0, 0x73

    goto/16 :goto_63

    .line 1583
    :sswitch_16f
    const/16 v0, 0x73

    goto/16 :goto_63

    .line 1585
    :sswitch_173
    const/16 v0, 0x53

    goto/16 :goto_63

    .line 1586
    :sswitch_177
    const/16 v0, 0x53

    goto/16 :goto_63

    .line 1587
    :sswitch_17b
    const/16 v0, 0x53

    goto/16 :goto_63

    .line 1589
    :sswitch_17f
    const/16 v0, 0x74

    goto/16 :goto_63

    .line 1591
    :sswitch_183
    const/16 v0, 0x54

    goto/16 :goto_63

    .line 1593
    :sswitch_187
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1594
    :sswitch_18b
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1595
    :sswitch_18f
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1596
    :sswitch_193
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1598
    :sswitch_197
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1599
    :sswitch_19b
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1600
    :sswitch_19f
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1601
    :sswitch_1a3
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1602
    :sswitch_1a7
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1604
    :sswitch_1ab
    const/16 v0, 0x79

    goto/16 :goto_63

    .line 1605
    :sswitch_1af
    const/16 v0, 0x79

    goto/16 :goto_63

    .line 1607
    :sswitch_1b3
    const/16 v0, 0x59

    goto/16 :goto_63

    .line 1608
    :sswitch_1b7
    const/16 v0, 0x59

    goto/16 :goto_63

    .line 1610
    :sswitch_1bb
    const/16 v0, 0x7a

    goto/16 :goto_63

    .line 1611
    :sswitch_1bf
    const/16 v0, 0x7a

    goto/16 :goto_63

    .line 1612
    :sswitch_1c3
    const/16 v0, 0x7a

    goto/16 :goto_63

    .line 1614
    :sswitch_1c7
    const/16 v0, 0x5a

    goto/16 :goto_63

    .line 1615
    :sswitch_1cb
    const/16 v0, 0x5a

    goto/16 :goto_63

    .line 1616
    :sswitch_1cf
    const/16 v0, 0x5a

    goto/16 :goto_63

    .line 1619
    :sswitch_1d3
    const/16 v0, 0x45

    goto/16 :goto_63

    .line 1620
    :sswitch_1d7
    const/16 v0, 0x50

    goto/16 :goto_63

    .line 1621
    :sswitch_1db
    const/16 v0, 0x54

    goto/16 :goto_63

    .line 1622
    :sswitch_1df
    const/16 v0, 0x59

    goto/16 :goto_63

    .line 1623
    :sswitch_1e3
    const/16 v0, 0x49

    goto/16 :goto_63

    .line 1624
    :sswitch_1e7
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1625
    :sswitch_1eb
    const/16 v0, 0x41

    goto/16 :goto_63

    .line 1626
    :sswitch_1ef
    const/16 v0, 0x48

    goto/16 :goto_63

    .line 1627
    :sswitch_1f3
    const/16 v0, 0x4b

    goto/16 :goto_63

    .line 1628
    :sswitch_1f7
    const/16 v0, 0x5a

    goto/16 :goto_63

    .line 1629
    :sswitch_1fb
    const/16 v0, 0x58

    goto/16 :goto_63

    .line 1630
    :sswitch_1ff
    const/16 v0, 0x42

    goto/16 :goto_63

    .line 1631
    :sswitch_203
    const/16 v0, 0x4e

    goto/16 :goto_63

    .line 1632
    :sswitch_207
    const/16 v0, 0x4d

    goto/16 :goto_63

    .line 1654
    :sswitch_20b
    const/16 v0, 0x65

    goto/16 :goto_63

    .line 1655
    :sswitch_20f
    const/16 v0, 0x6f

    goto/16 :goto_63

    .line 1656
    :sswitch_213
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1657
    :sswitch_217
    const/16 v0, 0x4f

    goto/16 :goto_63

    .line 1658
    :sswitch_21b
    const/16 v0, 0x55

    goto/16 :goto_63

    .line 1659
    :sswitch_21f
    const/16 v0, 0x75

    goto/16 :goto_63

    .line 1664
    :cond_223
    const/16 v1, 0x7f

    if-le v0, v1, :cond_63

    .line 1666
    const/16 v1, 0x80

    if-ne v0, v1, :cond_22f

    .line 1669
    const/16 v0, 0x20

    goto/16 :goto_63

    .line 1673
    :cond_22f
    const v0, 0xfeff

    goto/16 :goto_63

    .line 1482
    :sswitch_data_234
    .sparse-switch
        0xc0 -> :sswitch_8c
        0xc1 -> :sswitch_8f
        0xc2 -> :sswitch_92
        0xc3 -> :sswitch_95
        0xc8 -> :sswitch_c2
        0xca -> :sswitch_c5
        0xcb -> :sswitch_c8
        0xcc -> :sswitch_eb
        0xcd -> :sswitch_ef
        0xce -> :sswitch_f3
        0xcf -> :sswitch_f7
        0xd2 -> :sswitch_13f
        0xd3 -> :sswitch_143
        0xd4 -> :sswitch_147
        0xd5 -> :sswitch_14b
        0xd9 -> :sswitch_197
        0xda -> :sswitch_19b
        0xdb -> :sswitch_19f
        0xdd -> :sswitch_1b3
        0xe1 -> :sswitch_7d
        0xe2 -> :sswitch_80
        0xe3 -> :sswitch_83
        0xe7 -> :sswitch_a4
        0xea -> :sswitch_b3
        0xeb -> :sswitch_b6
        0xed -> :sswitch_da
        0xee -> :sswitch_dd
        0xef -> :sswitch_e0
        0xf3 -> :sswitch_12b
        0xf4 -> :sswitch_12f
        0xf5 -> :sswitch_133
        0xfa -> :sswitch_187
        0xfb -> :sswitch_18b
        0xfd -> :sswitch_1ab
        0xff -> :sswitch_1af
        0x100 -> :sswitch_98
        0x101 -> :sswitch_89
        0x104 -> :sswitch_9b
        0x105 -> :sswitch_86
        0x106 -> :sswitch_a7
        0x107 -> :sswitch_9e
        0x10c -> :sswitch_aa
        0x10d -> :sswitch_a1
        0x10e -> :sswitch_b0
        0x10f -> :sswitch_ad
        0x112 -> :sswitch_d1
        0x113 -> :sswitch_bf
        0x118 -> :sswitch_cb
        0x119 -> :sswitch_b9
        0x11a -> :sswitch_ce
        0x11b -> :sswitch_bc
        0x11e -> :sswitch_d7
        0x11f -> :sswitch_d4
        0x12a -> :sswitch_ff
        0x12b -> :sswitch_e7
        0x130 -> :sswitch_fb
        0x131 -> :sswitch_e3
        0x139 -> :sswitch_10f
        0x13a -> :sswitch_103
        0x13d -> :sswitch_113
        0x13e -> :sswitch_107
        0x141 -> :sswitch_117
        0x142 -> :sswitch_10b
        0x143 -> :sswitch_123
        0x144 -> :sswitch_11b
        0x147 -> :sswitch_127
        0x148 -> :sswitch_11f
        0x14c -> :sswitch_14f
        0x14d -> :sswitch_137
        0x152 -> :sswitch_153
        0x153 -> :sswitch_13b
        0x154 -> :sswitch_15f
        0x155 -> :sswitch_157
        0x158 -> :sswitch_163
        0x159 -> :sswitch_15b
        0x15a -> :sswitch_173
        0x15b -> :sswitch_167
        0x15e -> :sswitch_17b
        0x15f -> :sswitch_16f
        0x160 -> :sswitch_177
        0x161 -> :sswitch_16b
        0x164 -> :sswitch_183
        0x165 -> :sswitch_17f
        0x16a -> :sswitch_1a7
        0x16b -> :sswitch_193
        0x16e -> :sswitch_1a3
        0x16f -> :sswitch_18f
        0x178 -> :sswitch_1b7
        0x179 -> :sswitch_1c7
        0x17a -> :sswitch_1bb
        0x17b -> :sswitch_1cf
        0x17c -> :sswitch_1c3
        0x17d -> :sswitch_1cb
        0x17e -> :sswitch_1bf
        0x391 -> :sswitch_1eb
        0x392 -> :sswitch_1ff
        0x395 -> :sswitch_1d3
        0x396 -> :sswitch_1f7
        0x397 -> :sswitch_1ef
        0x399 -> :sswitch_1e3
        0x39a -> :sswitch_1f3
        0x39c -> :sswitch_207
        0x39d -> :sswitch_203
        0x39f -> :sswitch_1e7
        0x3a1 -> :sswitch_1d7
        0x3a4 -> :sswitch_1db
        0x3a5 -> :sswitch_1df
        0x3a7 -> :sswitch_1fb
    .end sparse-switch

    .line 1652
    :sswitch_data_3e6
    .sparse-switch
        0xe9 -> :sswitch_20b
        0xf6 -> :sswitch_20f
        0xfc -> :sswitch_213
        0x150 -> :sswitch_217
        0x170 -> :sswitch_21b
        0x171 -> :sswitch_21f
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 676
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 679
    :goto_6
    return v1

    .line 677
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 679
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 6
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 694
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_f

    move v0, v3

    .line 706
    :goto_e
    return v0

    .line 698
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1b

    .line 699
    const/4 v0, 0x2

    goto :goto_e

    .line 702
    :cond_1b
    if-eqz p1, :cond_23

    .line 703
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_23
    move v0, v3

    .line 706
    goto :goto_e
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 719
    .local v2, sz:I
    const/4 v1, 0x0

    .line 721
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 722
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 726
    :cond_14
    return v1
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 13
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v8, -0x1

    .line 743
    const/4 v3, 0x0

    .line 744
    .local v3, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 745
    .local v5, sz:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p2

    .line 746
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 747
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_3c

    .line 748
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 749
    .local v0, c:C
    const/16 v6, 0x1b

    if-ne v0, v6, :cond_23

    .line 750
    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 753
    :cond_23
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_2c

    .line 754
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 755
    :cond_2c
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_35

    .line 756
    add-int/lit8 v3, v3, 0x2

    goto :goto_20

    .line 757
    :cond_35
    if-eqz p1, :cond_3a

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    move v6, v8

    .line 763
    .end local v0           #c:C
    :goto_3b
    return v6

    :cond_3c
    move v6, v3

    goto :goto_3b
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 941
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 942
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 943
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_34

    .line 944
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 945
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_2e

    .line 946
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 947
    if-ne v3, v7, :cond_2b

    .line 949
    add-int/lit8 v0, v0, 0x1

    .line 956
    :goto_27
    if-le v0, p2, :cond_31

    move v6, v4

    .line 960
    .end local v3           #encodedSeptet:I
    :goto_2a
    return v6

    .line 951
    .restart local v3       #encodedSeptet:I
    :cond_2b
    add-int/lit8 v0, v0, 0x2

    goto :goto_27

    .line 954
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 943
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v3           #encodedSeptet:I
    :cond_34
    move v6, v5

    .line 960
    goto :goto_2a
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .registers 2

    .prologue
    .line 1010
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .registers 2

    .prologue
    .line 999
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 394
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 418
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, p2, :cond_54

    .line 419
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 421
    .local v0, bitOffset:I
    :try_start_e
    div-int/lit8 v1, v0, 0x8

    .line 422
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 425
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 428
    .local v3, gsmVal:I
    if-le v7, v10, :cond_2e

    .line 430
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 432
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 435
    :cond_2e
    if-eqz v5, :cond_3b

    .line 436
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    const/4 v5, 0x0

    .line 418
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 438
    :cond_3b
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_41

    .line 439
    const/4 v5, 0x1

    goto :goto_38

    .line 441
    :cond_41
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_48} :catch_49

    goto :goto_38

    .line 444
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_49
    move-exception v8

    move-object v2, v8

    .line 445
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v8, 0x0

    .line 449
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_53
    return-object v8

    :cond_54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_53
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 14
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 471
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_c

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p4, v0, :cond_2c

    .line 472
    :cond_c
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown language table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 p4, 0x0

    .line 475
    .restart local p4
    :cond_2c
    if-ltz p5, :cond_33

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p5, v0, :cond_53

    .line 476
    :cond_33
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown single shift table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v1, ", using default"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 p5, 0x0

    .line 481
    .restart local p5
    :cond_53
    const/4 v2, 0x0

    .line 482
    .local v2, prevCharWasEscape:Z
    :try_start_54
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, p4

    .line 483
    .local v0, languageTableToChar:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v4, v1, p5

    .line 485
    .local v4, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_127

    .line 486
    const-string v0, "GSM"

    .end local v0           #languageTableToChar:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no language table for code "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    .local p4, languageTableToChar:Ljava/lang/String;
    move-object v1, p4

    .line 489
    .end local p4           #languageTableToChar:Ljava/lang/String;
    .local v1, languageTableToChar:Ljava/lang/String;
    :goto_86
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_125

    .line 490
    const-string p4, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no single shift table for code "

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v0, ", using default"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 p5, 0x0

    aget-object p4, p4, p5

    .local p4, shiftTableToChar:Ljava/lang/String;
    move-object v5, p4

    .line 494
    .end local p4           #shiftTableToChar:Ljava/lang/String;
    .local v5, shiftTableToChar:Ljava/lang/String;
    :goto_b0
    const/4 p4, 0x0

    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .local v0, i:I
    :goto_b2
    if-ge v0, p2, :cond_11b

    .line 495
    mul-int/lit8 p4, v0, 0x7

    add-int/2addr p4, p3

    .line 497
    .local p4, bitOffset:I
    div-int/lit8 p5, p4, 0x8

    .line 498
    .local p5, byteOffset:I
    rem-int/lit8 v4, p4, 0x8

    .line 501
    .local v4, shift:I
    add-int p4, p1, p5

    aget-byte p4, p0, p4

    .end local p4           #bitOffset:I
    shr-int/2addr p4, v4

    and-int/lit8 p4, p4, 0x7f

    .line 504
    .local p4, gsmVal:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_123

    .line 506
    const/16 v6, 0x7f

    const/4 v7, 0x1

    sub-int v7, v4, v7

    shr-int/2addr v6, v7

    and-int/2addr p4, v6

    .line 508
    add-int/2addr p5, p1

    add-int/lit8 p5, p5, 0x1

    aget-byte p5, p0, p5
    :try_end_d1
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_d1} :catch_120

    .end local p5           #byteOffset:I
    const/16 v6, 0x8

    sub-int v4, v6, v4

    shl-int/2addr p5, v4

    and-int/lit8 p5, p5, 0x7f

    or-int/2addr p4, p5

    move p5, p4

    .line 511
    .end local v4           #shift:I
    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    :goto_da
    if-eqz v2, :cond_10b

    .line 512
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_ec

    .line 513
    const/16 p4, 0x20

    :try_start_e2
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    :goto_e5
    const/4 p4, 0x0

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .line 494
    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    :goto_e7
    add-int/lit8 p4, v0, 0x1

    .end local v0           #i:I
    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .restart local v0       #i:I
    move v2, p5

    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    goto :goto_b2

    .line 515
    .local p5, gsmVal:I
    :cond_ec
    invoke-virtual {v5, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 516
    .local p4, c:C
    const/16 v4, 0x20

    if-ne p4, v4, :cond_107

    .line 517
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .end local p4           #c:C
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_fb
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_fb} :catch_fc

    goto :goto_e5

    .line 529
    :catch_fc
    move-exception p0

    move p1, v2

    .line 530
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v2           #prevCharWasEscape:Z
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .end local p5           #gsmVal:I
    .local p0, ex:Ljava/lang/RuntimeException;
    .local p1, prevCharWasEscape:Z
    :goto_fe
    const-string p1, "GSM"

    .end local p1           #prevCharWasEscape:Z
    const-string p2, "Error GSM 7 bit packed: "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 p0, 0x0

    .line 534
    .end local p0           #ex:Ljava/lang/RuntimeException;
    :goto_106
    return-object p0

    .line 519
    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p0, pdu:[B
    .local p1, offset:I
    .restart local p2
    .restart local p4       #c:C
    .restart local p5       #gsmVal:I
    :cond_107
    :try_start_107
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 523
    .end local p4           #c:C
    :cond_10b
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_112

    .line 524
    const/4 p4, 0x1

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_e7

    .line 526
    .restart local v2       #prevCharWasEscape:Z
    .local p5, gsmVal:I
    :cond_112
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_119
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_119} :catch_fc

    move p5, v2

    .end local v2           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_e7

    .line 534
    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    :cond_11b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_106

    .line 529
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    :catch_120
    move-exception p0

    move p1, v2

    .end local v2           #prevCharWasEscape:Z
    .local p1, prevCharWasEscape:Z
    goto :goto_fe

    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v4       #shift:I
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p1, offset:I
    .local p4, gsmVal:I
    .local p5, byteOffset:I
    :cond_123
    move p5, p4

    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    goto :goto_da

    .end local v0           #i:I
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v4, shiftTableToChar:Ljava/lang/String;
    .local p5, shiftTable:I
    :cond_125
    move-object v5, v4

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    goto :goto_b0

    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v0, languageTableToChar:Ljava/lang/String;
    .restart local v4       #shiftTableToChar:Ljava/lang/String;
    .local p4, languageTable:I
    :cond_127
    move-object v1, v0

    .end local v0           #languageTableToChar:Ljava/lang/String;
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    goto/16 :goto_86
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 15
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v9, 0x0

    const/16 v11, 0x20

    .line 553
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v3, v8, v9

    .line 554
    .local v3, languageTableToChar:Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v8, v9

    .line 556
    .local v7, shiftTableToChar:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 558
    .local v4, prevWasEscape:Z
    move v2, p1

    .local v2, i:I
    :goto_12
    add-int v8, p1, p2

    if-ge v2, v8, :cond_1e

    .line 561
    aget-byte v8, p0, v2

    and-int/lit16 v0, v8, 0xff

    .line 563
    .local v0, c:I
    const/16 v8, 0xff

    if-ne v0, v8, :cond_23

    .line 596
    .end local v0           #c:I
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 565
    .restart local v0       #c:I
    :cond_23
    const/16 v8, 0x1b

    if-ne v0, v8, :cond_32

    .line 566
    if-eqz v4, :cond_30

    .line 570
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    const/4 v4, 0x0

    .line 558
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 573
    :cond_30
    const/4 v4, 0x1

    goto :goto_2d

    .line 576
    :cond_32
    if-eqz v4, :cond_47

    .line 577
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 578
    .local v6, shiftChar:C
    if-ne v6, v11, :cond_43

    .line 580
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    .end local v6           #shiftChar:C
    :goto_41
    const/4 v4, 0x0

    goto :goto_2d

    .line 582
    .restart local v6       #shiftChar:C
    :cond_43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 586
    .end local v6           #shiftChar:C
    :cond_47
    :try_start_47
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_41

    .line 587
    :catch_4f
    move-exception v8

    move-object v1, v8

    .line 588
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gsm8BitUnpackedToString : Exception - index("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), char("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public static gsmExtendedToChar(I)C
    .registers 5
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 198
    const/16 v1, 0x1b

    if-ne p0, v1, :cond_9

    move v1, v2

    .line 208
    :goto_8
    return v1

    .line 200
    :cond_9
    if-ltz p0, :cond_24

    const/16 v1, 0x80

    if-ge p0, v1, :cond_24

    .line 201
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, c:C
    if-ne v0, v2, :cond_22

    .line 203
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    :cond_22
    move v1, v0

    .line 205
    goto :goto_8

    .end local v0           #c:C
    :cond_24
    move v1, v2

    .line 208
    goto :goto_8
.end method

.method public static gsmToChar(I)C
    .registers 3
    .parameter "gsmChar"

    .prologue
    .line 176
    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 177
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    :goto_f
    return v0

    :cond_10
    const/16 v0, 0x20

    goto :goto_f
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 371
    div-int/lit8 v0, p1, 0x8

    .line 372
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 374
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 376
    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 377
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 379
    :cond_1b
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .registers 3
    .parameter "tables"

    .prologue
    .line 988
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 989
    monitor-exit v0

    return-void

    .line 988
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .registers 4
    .parameter "tables"

    .prologue
    .line 971
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 973
    array-length v1, p0

    if-lez v1, :cond_11

    .line 974
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, p0, v1

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 978
    :goto_f
    monitor-exit v0

    return-void

    .line 976
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_f

    .line 971
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 5
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 14
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 322
    .local v1, dataLen:I
    if-nez p2, :cond_16

    const/4 v0, 0x1

    :goto_7
    invoke-static {p0, v0, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 324
    .local v0, septetCount:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 325
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "countGsmSeptetsUsingTables(): unencodable char"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    .end local v0           #septetCount:I
    .restart local p0
    .restart local p1
    :cond_16
    const/4 v0, 0x0

    goto :goto_7

    .line 327
    .restart local v0       #septetCount:I
    :cond_18
    add-int v4, v0, p1

    .line 328
    .end local v0           #septetCount:I
    .local v4, septetCount:I
    const/16 v0, 0xff

    if-le v4, v0, :cond_26

    .line 329
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 255 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    .restart local p0
    .restart local p1
    :cond_26
    mul-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 332
    .local v0, byteCount:I
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 333
    .end local v0           #byteCount:I
    .local v3, ret:[B
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, p3

    .line 334
    .local v0, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object p3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .end local p3
    aget-object p4, p3, p4

    .line 335
    .local p4, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 p3, 0x0

    .local p3, i:I
    move v2, p1

    .local v2, septets:I
    mul-int/lit8 p1, p1, 0x7

    .local p1, bitOffset:I
    move v5, v2

    .end local v2           #septets:I
    .local v5, septets:I
    move v2, p3

    .line 336
    .end local p3           #i:I
    .local v2, i:I
    :goto_3e
    if-ge v2, v1, :cond_82

    if-ge v5, v4, :cond_82

    .line 338
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 339
    .local p3, c:C
    const/4 v6, -0x1

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 340
    .local v6, v:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_87

    .line 341
    const/4 v6, -0x1

    invoke-virtual {p4, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result v6

    .line 342
    .restart local v6       #v:I
    const/4 p3, -0x1

    if-ne v6, p3, :cond_77

    .line 343
    .end local p3           #c:C
    if-eqz p2, :cond_61

    .line 344
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string/jumbo p1, "stringToGsm7BitPacked(): unencodable char"

    .end local p1           #bitOffset:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    .restart local p0
    .restart local p1       #bitOffset:I
    :cond_61
    const/16 p3, 0x20

    const/16 v6, 0x20

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result p3

    .local p3, v:I
    move v8, p3

    .end local p3           #v:I
    .local v8, v:I
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v8

    .line 354
    .end local v8           #v:I
    .local v5, v:I
    :goto_6c
    invoke-static {v3, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 355
    add-int/lit8 v5, p3, 0x1

    .line 337
    .end local p3           #septets:I
    .local v5, septets:I
    add-int/lit8 p3, v2, 0x1

    .end local v2           #i:I
    .local p3, i:I
    add-int/lit8 p1, p1, 0x7

    move v2, p3

    .end local p3           #i:I
    .restart local v2       #i:I
    goto :goto_3e

    .line 349
    .restart local v6       #v:I
    :cond_77
    const/16 p3, 0x1b

    invoke-static {v3, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 350
    add-int/lit8 p1, p1, 0x7

    .line 351
    add-int/lit8 p3, v5, 0x1

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_6c

    .line 357
    .end local p3           #septets:I
    .local v5, septets:I
    :cond_82
    const/4 p0, 0x0

    int-to-byte p1, v4

    aput-byte p1, v3, p0

    .line 358
    .end local p0
    .end local p1           #bitOffset:I
    return-object v3

    .restart local v6       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    .local p3, c:C
    :cond_87
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_6c
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 10
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 237
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_b

    .line 238
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v3

    .line 250
    :goto_a
    return-object v3

    .line 241
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 242
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 244
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 248
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 249
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 250
    goto :goto_a
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 609
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 612
    .local v1, septets:I
    new-array v0, v1, [B

    .line 614
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 616
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 16
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 631
    move v4, p2

    .line 632
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 633
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 636
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 637
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_13
    if-ge v3, v6, :cond_3b

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3b

    .line 640
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 642
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 644
    .local v7, v:I
    if-ne v7, v9, :cond_4d

    .line 645
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 646
    if-ne v7, v9, :cond_36

    .line 647
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 658
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_2e
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 650
    :cond_36
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_45

    .line 662
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_3b
    :goto_3b
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_4c

    .line 663
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_3b

    .line 654
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_45
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_2e

    .line 665
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_4c
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4d
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_2e
.end method
