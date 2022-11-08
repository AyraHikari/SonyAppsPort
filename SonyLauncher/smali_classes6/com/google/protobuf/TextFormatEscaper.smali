.class final Lcom/google/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .line 109
    new-instance v0, Lcom/google/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormatEscaper$1;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Lcom/google/protobuf/TextFormatEscaper$ByteSequence;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    invoke-interface {p0, v1}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v2

    .line 53
    .local v2, "b":B
    sparse-switch v2, :sswitch_data_0

    .line 88
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 89
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 77
    :sswitch_0
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    goto :goto_1

    .line 80
    :sswitch_1
    const-string v3, "\\\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_1

    .line 83
    :sswitch_2
    const-string v3, "\\\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_1

    .line 68
    :sswitch_3
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    goto :goto_1

    .line 62
    :sswitch_4
    const-string v3, "\\f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_1

    .line 74
    :sswitch_5
    const-string v3, "\\v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    goto :goto_1

    .line 65
    :sswitch_6
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1

    .line 71
    :sswitch_7
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    goto :goto_1

    .line 59
    :sswitch_8
    const-string v3, "\\b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    goto :goto_1

    .line 56
    :sswitch_9
    const-string v3, "\\a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_1

    .line 91
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    and-int/lit8 v3, v2, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .end local v2    # "b":B
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static escapeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .line 125
    new-instance v0, Lcom/google/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 150
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
