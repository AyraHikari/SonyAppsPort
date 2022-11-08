.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "JsonUtf8Reader.java"


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 30
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 31
    nop

    .line 32
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 33
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 34
    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;

    .line 93
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 94
    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 98
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 99
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 100
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-eqz v0, :cond_0

    .line 953
    return-void

    .line 951
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0
.end method

.method private doPeek()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 213
    .local v0, "peekStack":I
    const-wide/16 v3, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ne v0, v2, :cond_0

    .line 214
    iget-object v9, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v10, v2

    aput v8, v9, v10

    goto/16 :goto_2

    .line 215
    :cond_0
    if-ne v0, v8, :cond_1

    .line 217
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 218
    .local v9, "c":I
    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    .line 219
    sparse-switch v9, :sswitch_data_0

    .line 227
    const-string v1, "Unterminated array"

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 221
    :sswitch_0
    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v7

    .line 223
    :sswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 225
    :sswitch_2
    nop

    .line 229
    .end local v9    # "c":I
    goto :goto_2

    :cond_1
    const/4 v9, 0x5

    if-eq v0, v5, :cond_f

    if-ne v0, v9, :cond_2

    goto/16 :goto_4

    .line 270
    :cond_2
    if-ne v0, v7, :cond_4

    .line 271
    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v11, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v11, v2

    aput v9, v10, v11

    .line 273
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 274
    .restart local v9    # "c":I
    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    .line 275
    sparse-switch v9, :sswitch_data_1

    .line 285
    const-string v1, "Expected \':\'"

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 279
    :sswitch_3
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 280
    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v11, 0x1

    invoke-interface {v10, v11, v12}, Lokio/BufferedSource;->request(J)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v10

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_3

    .line 281
    iget-object v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 277
    :sswitch_4
    nop

    .line 287
    .end local v9    # "c":I
    :cond_3
    :goto_0
    goto :goto_2

    :cond_4
    const/4 v9, 0x6

    if-ne v0, v9, :cond_5

    .line 288
    iget-object v9, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v10, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v10, v2

    aput v6, v9, v10

    goto :goto_2

    .line 289
    :cond_5
    if-ne v0, v6, :cond_7

    .line 290
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 291
    .restart local v9    # "c":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 292
    const/16 v1, 0x12

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 294
    :cond_6
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .end local v9    # "c":I
    goto :goto_1

    .line 296
    :cond_7
    if-eq v0, v1, :cond_e

    :goto_1
    nop

    .line 300
    :goto_2
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 301
    .restart local v9    # "c":I
    sparse-switch v9, :sswitch_data_2

    .line 333
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v1

    .line 334
    .local v1, "result":I
    if-eqz v1, :cond_b

    .line 335
    return v1

    .line 328
    .end local v1    # "result":I
    :sswitch_5
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 329
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 303
    :sswitch_6
    if-ne v0, v2, :cond_8

    .line 304
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 305
    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v7

    .line 325
    :sswitch_7
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 326
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v5

    .line 311
    :cond_8
    :sswitch_8
    if-eq v0, v2, :cond_a

    if-ne v0, v8, :cond_9

    goto :goto_3

    .line 315
    :cond_9
    const-string v1, "Unexpected value"

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 312
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 313
    iput v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 318
    :sswitch_9
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 319
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 320
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 322
    :sswitch_a
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 323
    const/16 v1, 0x9

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 338
    .restart local v1    # "result":I
    :cond_b
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v1

    .line 339
    if-eqz v1, :cond_c

    .line 340
    return v1

    .line 343
    :cond_c
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 347
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 348
    const/16 v2, 0xa

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 344
    :cond_d
    const-string v2, "Expected value"

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 297
    .end local v1    # "result":I
    .end local v9    # "c":I
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v3, v2

    aput v7, v1, v3

    .line 232
    if-ne v0, v9, :cond_10

    .line 233
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 234
    .local v1, "c":I
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 235
    sparse-switch v1, :sswitch_data_3

    .line 243
    const-string v2, "Unterminated object"

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 237
    :sswitch_b
    iput v8, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v8

    .line 239
    :sswitch_c
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 246
    .end local v1    # "c":I
    :cond_10
    :sswitch_d
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 247
    .restart local v1    # "c":I
    const-string v2, "Expected name"

    sparse-switch v1, :sswitch_data_4

    .line 263
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 264
    int-to-char v3, v1

    invoke-direct {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 265
    const/16 v2, 0xe

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 256
    :sswitch_e
    if-eq v0, v9, :cond_11

    .line 257
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 258
    iput v8, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v8

    .line 260
    :cond_11
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 252
    :sswitch_f
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 253
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 254
    const/16 v2, 0xc

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 249
    :sswitch_10
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 250
    const/16 v2, 0xd

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 267
    :cond_12
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3a -> :sswitch_4
        0x3d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x2c -> :sswitch_8
        0x3b -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x7b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_d
        0x3b -> :sswitch_c
        0x7d -> :sswitch_b
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_10
        0x27 -> :sswitch_f
        0x7d -> :sswitch_e
    .end sparse-switch
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 595
    iget-object v2, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 597
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object p1, v2, v3

    .line 599
    return v0

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findString(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 637
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 638
    iget-object v2, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 640
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 642
    return v0

    .line 637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isLiteral(I)Z
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 505
    const/4 v0, 0x1

    return v0

    .line 491
    :sswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 503
    :sswitch_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 5
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "p":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 897
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "p":I
    .local v2, "p":I
    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 898
    .local v0, "c":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 899
    goto :goto_1

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 903
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 904
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x2

    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 905
    return v0

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 909
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 910
    .local v1, "peek":B
    sparse-switch v1, :sswitch_data_0

    .line 930
    return v0

    .line 923
    :sswitch_0
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 924
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 925
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 926
    const/4 v2, 0x0

    .line 927
    move v0, v2

    goto :goto_0

    .line 913
    :sswitch_1
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 914
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 915
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 918
    const/4 v2, 0x0

    .line 919
    move v0, v2

    goto :goto_0

    .line 916
    :cond_2
    const-string v3, "Unterminated comment"

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 932
    .end local v1    # "peek":B
    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 935
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 936
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 937
    const/4 v1, 0x0

    .line 941
    .end local v0    # "c":I
    .end local v2    # "p":I
    .local v1, "p":I
    move v0, v1

    goto/16 :goto_0

    .line 939
    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_4
    return v0

    .line 896
    .end local v0    # "c":I
    :cond_5
    :goto_1
    move v0, v2

    goto/16 :goto_0

    .line 942
    .end local v2    # "p":I
    .local v0, "p":I
    :cond_6
    if-nez p1, :cond_7

    .line 945
    const/4 v1, -0x1

    return v1

    .line 943
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "End of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 5
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v1

    .line 718
    .local v1, "index":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 721
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 722
    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 723
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 725
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    goto :goto_0

    .line 730
    :cond_1
    if-nez v0, :cond_2

    .line 731
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 733
    return-object v3

    .line 735
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 718
    :cond_3
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v3

    throw v3
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 745
    .local v0, "i":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private peekKeyword()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 357
    .local v0, "c":B
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 361
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    return v1

    .line 366
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 367
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 368
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 362
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 363
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 364
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 358
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 359
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 360
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 374
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 375
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 376
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v6, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-nez v7, :cond_6

    .line 377
    return v1

    .line 379
    :cond_6
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 380
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 381
    return v1

    .line 375
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 385
    .end local v6    # "i":I
    :cond_8
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    invoke-direct {p0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 386
    return v1

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 391
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const-wide/16 v0, 0x0

    .line 396
    .local v0, "value":J
    const/4 v2, 0x0

    .line 397
    .local v2, "negative":Z
    const/4 v3, 0x1

    .line 398
    .local v3, "fitsInLong":Z
    const/4 v4, 0x0

    .line 400
    .local v4, "last":I
    const/4 v5, 0x0

    .line 404
    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v6, :cond_0

    .line 405
    goto/16 :goto_5

    .line 408
    :cond_0
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v12, v5

    invoke-virtual {v6, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 409
    .local v6, "c":B
    const/4 v12, 0x5

    sparse-switch v6, :sswitch_data_0

    .line 444
    const/16 v13, 0x30

    if-lt v6, v13, :cond_11

    const/16 v13, 0x39

    if-le v6, v13, :cond_7

    goto/16 :goto_4

    .line 430
    :sswitch_0
    if-eq v4, v10, :cond_2

    if-ne v4, v9, :cond_1

    goto :goto_1

    .line 434
    :cond_1
    return v11

    .line 431
    :cond_2
    :goto_1
    const/4 v4, 0x5

    .line 432
    goto :goto_3

    .line 437
    :sswitch_1
    if-ne v4, v10, :cond_3

    .line 438
    const/4 v4, 0x3

    .line 439
    goto :goto_3

    .line 441
    :cond_3
    return v11

    .line 411
    :sswitch_2
    if-nez v4, :cond_4

    .line 412
    const/4 v2, 0x1

    .line 413
    const/4 v4, 0x1

    .line 414
    goto :goto_3

    .line 415
    :cond_4
    if-ne v4, v12, :cond_5

    .line 416
    const/4 v4, 0x6

    .line 417
    goto :goto_3

    .line 419
    :cond_5
    return v11

    .line 422
    :sswitch_3
    if-ne v4, v12, :cond_6

    .line 423
    const/4 v4, 0x6

    .line 424
    goto :goto_3

    .line 426
    :cond_6
    return v11

    .line 450
    :cond_7
    const/4 v9, 0x1

    if-eq v4, v9, :cond_f

    if-nez v4, :cond_8

    goto :goto_2

    .line 453
    :cond_8
    if-ne v4, v10, :cond_c

    .line 454
    cmp-long v7, v0, v7

    if-nez v7, :cond_9

    .line 455
    return v11

    .line 457
    :cond_9
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v0

    add-int/lit8 v10, v6, -0x30

    int-to-long v12, v10

    sub-long/2addr v7, v12

    .line 458
    .local v7, "newValue":J
    const-wide v12, -0xcccccccccccccccL

    cmp-long v10, v0, v12

    if-gtz v10, :cond_a

    cmp-long v10, v0, v12

    if-nez v10, :cond_b

    cmp-long v10, v7, v0

    if-gez v10, :cond_b

    :cond_a
    move v11, v9

    :cond_b
    and-int/2addr v3, v11

    .line 460
    move-wide v0, v7

    .line 461
    .end local v7    # "newValue":J
    goto :goto_3

    :cond_c
    const/4 v7, 0x3

    if-ne v4, v7, :cond_d

    .line 462
    const/4 v4, 0x4

    goto :goto_3

    .line 463
    :cond_d
    if-eq v4, v12, :cond_e

    const/4 v7, 0x6

    if-ne v4, v7, :cond_10

    .line 464
    :cond_e
    const/4 v4, 0x7

    goto :goto_3

    .line 451
    :cond_f
    :goto_2
    add-int/lit8 v7, v6, -0x30

    neg-int v7, v7

    int-to-long v0, v7

    .line 452
    const/4 v4, 0x2

    .line 403
    .end local v6    # "c":B
    :cond_10
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    .restart local v6    # "c":B
    :cond_11
    :goto_4
    invoke-direct {p0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v12

    if-nez v12, :cond_18

    .line 446
    nop

    .line 470
    .end local v6    # "c":B
    :goto_5
    if-ne v4, v10, :cond_15

    if-eqz v3, :cond_15

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v6, v0, v12

    if-nez v6, :cond_12

    if-eqz v2, :cond_15

    :cond_12
    cmp-long v6, v0, v7

    if-nez v6, :cond_13

    if-nez v2, :cond_15

    .line 472
    :cond_13
    if-eqz v2, :cond_14

    move-wide v6, v0

    goto :goto_6

    :cond_14
    neg-long v6, v0

    :goto_6
    iput-wide v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 473
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 474
    const/16 v6, 0x10

    iput v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 475
    :cond_15
    if-eq v4, v10, :cond_17

    if-eq v4, v9, :cond_17

    const/4 v6, 0x7

    if-ne v4, v6, :cond_16

    goto :goto_7

    .line 480
    :cond_16
    return v11

    .line 477
    :cond_17
    :goto_7
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 478
    const/16 v6, 0x11

    iput v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 448
    .restart local v6    # "c":B
    :cond_18
    return v11

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 992
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    .line 993
    .local v0, "escaped":B
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_0

    .line 1039
    iget-boolean v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-eqz v1, :cond_5

    .line 1040
    int-to-char v1, v0

    return v1

    .line 995
    :sswitch_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x4

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 999
    const/4 v2, 0x0

    .line 1000
    .local v2, "result":C
    const/4 v5, 0x0

    .local v5, "i":I
    add-int/lit8 v6, v5, 0x4

    .local v6, "end":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 1001
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    .line 1002
    .local v7, "c":B
    shl-int/lit8 v8, v2, 0x4

    int-to-char v2, v8

    .line 1003
    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    .line 1004
    add-int/lit8 v8, v7, -0x30

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_1

    .line 1005
    :cond_0
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    const/16 v8, 0x66

    if-gt v7, v8, :cond_1

    .line 1006
    add-int/lit8 v8, v7, -0x61

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_1

    .line 1007
    :cond_1
    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    const/16 v8, 0x46

    if-gt v7, v8, :cond_2

    .line 1008
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    .line 1000
    .end local v7    # "c":B
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1010
    .restart local v7    # "c":B
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v8, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 1013
    .end local v5    # "i":I
    .end local v6    # "end":I
    .end local v7    # "c":B
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 1014
    return v2

    .line 996
    .end local v2    # "result":C
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unterminated escape sequence at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1017
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 1026
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 1023
    :sswitch_3
    return v1

    .line 1029
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 1020
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 1036
    :sswitch_6
    int-to-char v1, v0

    return v1

    .line 1039
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 989
    .end local v0    # "escaped":B
    :cond_6
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 6
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 751
    .local v0, "index":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 754
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 755
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 760
    .end local v0    # "index":J
    goto :goto_0

    .line 757
    .restart local v0    # "index":J
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 758
    return-void

    .line 751
    :cond_1
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v2

    throw v2
.end method

.method private skipToEndOfBlockComment()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v2

    .line 970
    .local v2, "index":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 971
    .local v0, "found":Z
    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 972
    return v0
.end method

.method private skipToEndOfLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 962
    .local v0, "index":J
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 963
    return-void
.end method

.method private skipUnquotedValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 765
    .local v0, "i":J
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 766
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 105
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 108
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 110
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 111
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 116
    return-void

    .line 113
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 135
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 138
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 139
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 145
    return-void

    .line 142
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 825
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->scopes:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 826
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 827
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 828
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 829
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 120
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 123
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 124
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 125
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 131
    return-void

    .line 128
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 149
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 152
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 153
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    .line 154
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 155
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 161
    return-void

    .line 158
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 165
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 168
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 650
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 653
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 654
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 655
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 656
    return v3

    .line 657
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 658
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 659
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 660
    return v2

    .line 662
    :cond_2
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 667
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 671
    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 672
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 673
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 674
    iget-wide v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 677
    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 679
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 680
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 681
    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 682
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 683
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 684
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 685
    :cond_5
    if-ne v0, v4, :cond_8

    .line 689
    :goto_0
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .local v3, "result":D
    nop

    .line 697
    iget-boolean v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v1, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 698
    :cond_6
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 699
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    :cond_7
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 702
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 703
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 704
    return-wide v3

    .line 693
    .end local v3    # "result":D
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 695
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 770
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 775
    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 776
    iget-wide v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v1, v5

    .line 777
    .local v1, "result":I
    int-to-long v7, v1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 781
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 782
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 783
    return v1

    .line 778
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 779
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 787
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 788
    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    .line 800
    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 801
    :cond_5
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 790
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 791
    :cond_7
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 793
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 794
    .restart local v1    # "result":I
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 795
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    return v1

    .line 797
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 799
    nop

    .line 804
    :goto_2
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 807
    :try_start_1
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 811
    .local v5, "asDouble":D
    nop

    .line 812
    double-to-int v1, v5

    .line 813
    .restart local v1    # "result":I
    int-to-double v7, v1

    cmpl-double v7, v7, v5

    if-nez v7, :cond_8

    .line 817
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 818
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 819
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 820
    return v1

    .line 814
    :cond_8
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 815
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    .end local v1    # "result":I
    .end local v5    # "asDouble":D
    :catch_1
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 810
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 511
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 515
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 518
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 520
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 521
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 526
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 527
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 528
    return-object v1

    .line 524
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 607
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 611
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 613
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 614
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 615
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 616
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 617
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 618
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 619
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 620
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 621
    iget-wide v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 622
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 623
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .line 627
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 628
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 629
    return-object v1

    .line 625
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 173
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 177
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 205
    :pswitch_0
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 203
    :pswitch_1
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 190
    :pswitch_2
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 200
    :pswitch_3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 195
    :pswitch_4
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 193
    :pswitch_5
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 185
    :pswitch_6
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 183
    :pswitch_7
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 181
    :pswitch_8
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    .line 179
    :pswitch_9
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 6
    .param p1, "options"    # Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 533
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 536
    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    if-ne v0, v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    return v1

    .line 543
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v4, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v3

    .line 544
    .local v3, "result":I
    if-eq v3, v2, :cond_3

    .line 545
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 546
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v4, v4, v3

    aput-object v4, v1, v2

    .line 548
    return v3

    .line 553
    :cond_3
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 555
    .local v4, "lastPathName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "nextName":Ljava/lang/String;
    invoke-direct {p0, v5, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    .line 558
    if-ne v3, v2, :cond_4

    .line 559
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 560
    iput-object v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v4, v1, v2

    .line 565
    :cond_4
    return v3

    .line 537
    .end local v3    # "result":I
    .end local v4    # "lastPathName":Ljava/lang/String;
    .end local v5    # "nextName":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2
.end method

.method public skipName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-nez v0, :cond_5

    .line 572
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 573
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 576
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto :goto_0

    .line 578
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 579
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 580
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 581
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 582
    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 585
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 586
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 587
    return-void

    .line 583
    :cond_4
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    .end local v0    # "p":I
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-nez v0, :cond_10

    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 838
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v1

    .line 842
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 843
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 845
    :cond_2
    if-ne v1, v3, :cond_3

    .line 846
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 848
    :cond_3
    const/4 v2, 0x4

    const-string v4, " at path "

    const-string v5, "Expected a value but was "

    if-ne v1, v2, :cond_5

    .line 849
    add-int/lit8 v0, v0, -0x1

    .line 850
    if-ltz v0, :cond_4

    .line 854
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto/16 :goto_3

    .line 851
    :cond_4
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 852
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 855
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 856
    add-int/lit8 v0, v0, -0x1

    .line 857
    if-ltz v0, :cond_6

    .line 861
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    goto/16 :goto_3

    .line 858
    :cond_6
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 859
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_7
    const/16 v2, 0xe

    if-eq v1, v2, :cond_f

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 864
    :cond_8
    const/16 v2, 0x9

    if-eq v1, v2, :cond_e

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    goto :goto_1

    .line 866
    :cond_9
    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    goto :goto_0

    .line 868
    :cond_a
    const/16 v2, 0x11

    if-ne v1, v2, :cond_b

    .line 869
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    goto :goto_3

    .line 870
    :cond_b
    const/16 v2, 0x12

    if-eq v1, v2, :cond_c

    goto :goto_3

    .line 871
    :cond_c
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 872
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_d
    :goto_0
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_3

    .line 865
    :cond_e
    :goto_1
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_3

    .line 863
    :cond_f
    :goto_2
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 874
    :goto_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 875
    .end local v1    # "p":I
    if-nez v0, :cond_0

    .line 877
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 878
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 879
    return-void

    .line 833
    .end local v0    # "count":I
    :cond_10
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
