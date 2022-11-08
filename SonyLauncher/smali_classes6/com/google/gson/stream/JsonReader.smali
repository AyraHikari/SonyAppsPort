.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

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

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1585
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1607
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v2, v0

    .line 283
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1403
    return-void

    .line 1401
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1568
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1570
    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    return-void

    .line 1574
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1575
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    .line 1576
    return-void

    .line 1574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1581
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1582
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 8
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1277
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1278
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1279
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1280
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1282
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1285
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1287
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1288
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1291
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v4, :cond_2

    if-lez v1, :cond_2

    aget-char v6, v0, v3

    const v7, 0xfeff

    if-ne v6, v7, :cond_2

    .line 1292
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1293
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1294
    add-int/lit8 p1, p1, 0x1

    .line 1297
    :cond_2
    if-lt v1, p1, :cond_1

    .line 1298
    return v5

    .line 1301
    :cond_3
    return v3
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    sparse-switch p1, :sswitch_data_0

    .line 765
    const/4 v0, 0x1

    return v0

    .line 751
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 763
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

.method private locationString()Ljava/lang/String;
    .locals 4

    .line 1449
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 1450
    .local v0, "line":I
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1451
    .local v1, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private nextNonWhitespace(Z)I
    .locals 8
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1320
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1321
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1323
    .local v2, "l":I
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1324
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1325
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1326
    nop

    .line 1392
    if-nez p1, :cond_0

    .line 1395
    const/4 v3, -0x1

    return v3

    .line 1393
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1328
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1332
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1333
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1334
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1335
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1336
    goto/16 :goto_1

    .line 1337
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_9

    const/16 v5, 0xd

    if-eq v1, v5, :cond_9

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 1338
    goto :goto_1

    .line 1341
    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_7

    .line 1342
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1343
    const/4 v5, 0x2

    if-ne v4, v2, :cond_5

    .line 1344
    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1345
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    .line 1346
    .local v6, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1347
    if-nez v6, :cond_5

    .line 1348
    return v1

    .line 1352
    .end local v6    # "charsLoaded":Z
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1353
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v3

    .line 1354
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    .line 1374
    return v1

    .line 1367
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1369
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1371
    move v1, v3

    goto :goto_0

    .line 1357
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :sswitch_1
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1358
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1361
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v5

    .line 1362
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1363
    move v1, v3

    goto/16 :goto_0

    .line 1359
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_6
    const-string v3, "Unterminated comment"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1376
    .end local v6    # "peek":C
    :cond_7
    const/16 v3, 0x23

    if-ne v1, v3, :cond_8

    .line 1377
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1383
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1384
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1385
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1386
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1391
    .end local v1    # "c":I
    move v1, v3

    goto/16 :goto_0

    .line 1388
    .end local v3    # "p":I
    .restart local v1    # "c":I
    .restart local v4    # "p":I
    :cond_8
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1389
    return v1

    .line 1323
    .end local v1    # "c":I
    :cond_9
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 988
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 991
    .local v2, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 993
    .local v3, "l":I
    move v4, v2

    .line 994
    .local v4, "start":I
    :goto_1
    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    .line 995
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "p":I
    .local v6, "p":I
    aget-char v2, v0, v2

    .line 997
    .local v2, "c":I
    if-ne v2, p1, :cond_0

    .line 998
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 999
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1001
    :cond_0
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_1

    .line 1002
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1003
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1006
    .end local v6    # "p":I
    .local v5, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1007
    move v4, v5

    move v2, v5

    goto :goto_2

    .line 1008
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :cond_1
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 1009
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1010
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1012
    .end local v2    # "c":I
    :cond_2
    move v2, v6

    .end local v6    # "p":I
    .local v2, "p":I
    :goto_2
    goto :goto_1

    .line 1014
    :cond_3
    sub-int v6, v2, v4

    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1015
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1016
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1019
    .end local v2    # "p":I
    .end local v3    # "l":I
    .end local v4    # "start":I
    goto :goto_0

    .line 1017
    .restart local v2    # "p":I
    .restart local v3    # "l":I
    .restart local v4    # "start":I
    :cond_4
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1032
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v2, v1

    aget-char v2, v3, v2

    sparse-switch v2, :sswitch_data_0

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1051
    :sswitch_1
    goto :goto_1

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1057
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    goto :goto_0

    .line 1065
    :cond_1
    if-nez v0, :cond_2

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 1068
    :cond_2
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1069
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1070
    const/4 v1, 0x0

    .line 1071
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1072
    nop

    .line 1077
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 1078
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .local v2, "result":Ljava/lang/String;
    goto :goto_2

    .line 1080
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .restart local v2    # "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1084
    return-object v2

    .line 1071
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    goto :goto_0

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

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 603
    .local v0, "c":C
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 607
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 611
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 616
    :cond_2
    return v1

    .line 612
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 613
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 614
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 608
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 609
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 610
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 604
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 605
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 606
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 620
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 622
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 623
    return v1

    .line 625
    :cond_6
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 626
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 627
    return v1

    .line 621
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 631
    .end local v6    # "i":I
    :cond_8
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_9

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 632
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 633
    return v1

    .line 637
    :cond_a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 638
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 644
    .local v1, "buffer":[C
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 645
    .local v2, "p":I
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 647
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 648
    .local v4, "value":J
    const/4 v6, 0x0

    .line 649
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 650
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 652
    .local v8, "last":I
    const/4 v9, 0x0

    .line 656
    .local v9, "i":I
    :goto_0
    add-int v10, v2, v9

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v10, v3, :cond_2

    .line 657
    array-length v10, v1

    if-ne v9, v10, :cond_0

    .line 660
    return v13

    .line 662
    :cond_0
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 663
    goto/16 :goto_5

    .line 665
    :cond_1
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 666
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 669
    :cond_2
    add-int v10, v2, v9

    aget-char v10, v1, v10

    .line 670
    .local v10, "c":C
    const/4 v14, 0x5

    sparse-switch v10, :sswitch_data_0

    .line 705
    const/16 v15, 0x30

    if-lt v10, v15, :cond_13

    const/16 v15, 0x39

    if-le v10, v15, :cond_9

    goto/16 :goto_4

    .line 691
    :sswitch_0
    if-eq v8, v12, :cond_4

    if-ne v8, v11, :cond_3

    goto :goto_1

    .line 695
    :cond_3
    return v13

    .line 692
    :cond_4
    :goto_1
    const/4 v8, 0x5

    .line 693
    goto :goto_3

    .line 698
    :sswitch_1
    if-ne v8, v12, :cond_5

    .line 699
    const/4 v8, 0x3

    .line 700
    goto :goto_3

    .line 702
    :cond_5
    return v13

    .line 672
    :sswitch_2
    if-nez v8, :cond_6

    .line 673
    const/4 v6, 0x1

    .line 674
    const/4 v8, 0x1

    .line 675
    goto :goto_3

    .line 676
    :cond_6
    if-ne v8, v14, :cond_7

    .line 677
    const/4 v8, 0x6

    .line 678
    goto :goto_3

    .line 680
    :cond_7
    return v13

    .line 683
    :sswitch_3
    if-ne v8, v14, :cond_8

    .line 684
    const/4 v8, 0x6

    .line 685
    goto :goto_3

    .line 687
    :cond_8
    return v13

    .line 711
    :cond_9
    const/4 v11, 0x1

    if-eq v8, v11, :cond_11

    if-nez v8, :cond_a

    goto :goto_2

    .line 714
    :cond_a
    if-ne v8, v12, :cond_e

    .line 715
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-nez v12, :cond_b

    .line 716
    return v13

    .line 718
    :cond_b
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v4

    add-int/lit8 v12, v10, -0x30

    int-to-long v11, v12

    sub-long/2addr v14, v11

    .line 719
    .local v14, "newValue":J
    const-wide v11, -0xcccccccccccccccL

    cmp-long v16, v4, v11

    if-gtz v16, :cond_c

    cmp-long v11, v4, v11

    if-nez v11, :cond_d

    cmp-long v11, v14, v4

    if-gez v11, :cond_d

    :cond_c
    const/4 v13, 0x1

    :cond_d
    and-int/2addr v7, v13

    .line 721
    move-wide v4, v14

    .line 722
    .end local v14    # "newValue":J
    goto :goto_3

    :cond_e
    const/4 v11, 0x3

    if-ne v8, v11, :cond_f

    .line 723
    const/4 v8, 0x4

    goto :goto_3

    .line 724
    :cond_f
    if-eq v8, v14, :cond_10

    const/4 v11, 0x6

    if-ne v8, v11, :cond_12

    .line 725
    :cond_10
    const/4 v8, 0x7

    goto :goto_3

    .line 712
    :cond_11
    :goto_2
    add-int/lit8 v11, v10, -0x30

    neg-int v11, v11

    int-to-long v4, v11

    .line 713
    const/4 v8, 0x2

    .line 655
    .end local v10    # "c":C
    :cond_12
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 706
    .restart local v10    # "c":C
    :cond_13
    :goto_4
    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-nez v14, :cond_19

    .line 707
    nop

    .line 731
    .end local v10    # "c":C
    :goto_5
    if-ne v8, v12, :cond_16

    if-eqz v7, :cond_16

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v10, v4, v14

    if-nez v10, :cond_14

    if-eqz v6, :cond_16

    .line 732
    :cond_14
    if-eqz v6, :cond_15

    move-wide v10, v4

    goto :goto_6

    :cond_15
    neg-long v10, v4

    :goto_6
    iput-wide v10, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 733
    iget v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 734
    const/16 v10, 0xf

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 735
    :cond_16
    if-eq v8, v12, :cond_18

    if-eq v8, v11, :cond_18

    const/4 v10, 0x7

    if-ne v8, v10, :cond_17

    goto :goto_7

    .line 740
    :cond_17
    return v13

    .line 737
    :cond_18
    :goto_7
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 738
    const/16 v10, 0x10

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 709
    .restart local v10    # "c":C
    :cond_19
    return v13

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .line 1256
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 1257
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 1258
    .local v2, "newStack":[I
    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    .line 1259
    .local v3, "newPathIndices":[I
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1260
    .local v4, "newPathNames":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1264
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1265
    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1267
    .end local v2    # "newStack":[I
    .end local v3    # "newPathIndices":[I
    .end local v4    # "newPathNames":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1268
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1495
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1496
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1499
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1500
    .local v0, "escaped":C
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_0

    .line 1550
    const-string v1, "Invalid escape sequence"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1502
    :sswitch_0
    const/4 v3, 0x4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v4, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1503
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1506
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 1507
    .local v2, "result":C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v4, "i":I
    add-int/lit8 v5, v4, 0x4

    .local v5, "end":I
    :goto_2
    if-ge v4, v5, :cond_7

    .line 1508
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v6, v6, v4

    .line 1509
    .local v6, "c":C
    shl-int/lit8 v7, v2, 0x4

    int-to-char v2, v7

    .line 1510
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 1511
    add-int/lit8 v7, v6, -0x30

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_3

    .line 1512
    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    const/16 v7, 0x66

    if-gt v6, v7, :cond_5

    .line 1513
    add-int/lit8 v7, v6, -0x61

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_3

    .line 1514
    :cond_5
    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    .line 1515
    add-int/lit8 v7, v6, -0x41

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    .line 1507
    .end local v6    # "c":C
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1517
    .restart local v6    # "c":C
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v10, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v8, v9, v10, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1520
    .end local v4    # "i":I
    .end local v5    # "end":I
    .end local v6    # "c":C
    :cond_7
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1521
    return v2

    .line 1524
    .end local v2    # "result":C
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 1533
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 1530
    :sswitch_3
    return v1

    .line 1536
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 1527
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 1539
    :sswitch_6
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1540
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1547
    :sswitch_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1091
    .local v0, "buffer":[C
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1094
    .local v2, "l":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1095
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1096
    .local v1, "c":I
    if-ne v1, p1, :cond_0

    .line 1097
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1098
    return-void

    .line 1099
    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1100
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1101
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1102
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1103
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v1, v3

    goto :goto_2

    .line 1104
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1105
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1106
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1108
    .end local v1    # "c":I
    :cond_2
    move v1, v4

    .end local v4    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_1

    .line 1109
    :cond_3
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1110
    .end local v1    # "p":I
    .end local v2    # "l":I
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1111
    :cond_4
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1428
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1441
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1429
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 1430
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1431
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1432
    goto :goto_3

    .line 1434
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1435
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1436
    nop

    .line 1428
    .end local v0    # "c":I
    :goto_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1434
    .restart local v0    # "c":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1439
    .end local v0    # "c":I
    :cond_4
    return v3
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1413
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1414
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1415
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1416
    goto :goto_1

    .line 1417
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1418
    nop

    .line 1421
    .end local v0    # "c":C
    :cond_2
    :goto_1
    return-void

    .line 1420
    :cond_3
    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    :goto_0
    const/4 v0, 0x0

    .line 1117
    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_0

    .line 1118
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    sparse-switch v1, :sswitch_data_0

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1124
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1136
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1137
    return-void

    .line 1140
    :cond_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1141
    .end local v0    # "i":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    return-void

    .line 1141
    :cond_1
    goto :goto_0

    nop

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

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1559
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 348
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 352
    return-void

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 378
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 381
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 382
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 383
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 387
    return-void

    .line 385
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1209
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1210
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1211
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1212
    return-void
.end method

.method doPeek()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 463
    .local v2, "peekStack":I
    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 464
    sub-int/2addr v1, v8

    aput v7, v0, v1

    goto/16 :goto_2

    .line 465
    :cond_0
    if-ne v2, v7, :cond_1

    .line 467
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 468
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 476
    const-string v1, "Unterminated array"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 470
    :sswitch_0
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 472
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 474
    :sswitch_2
    nop

    .line 478
    .end local v0    # "c":I
    goto :goto_2

    :cond_1
    const/4 v9, 0x5

    if-eq v2, v4, :cond_11

    if-ne v2, v9, :cond_2

    goto/16 :goto_4

    .line 516
    :cond_2
    if-ne v2, v6, :cond_5

    .line 517
    sub-int/2addr v1, v8

    aput v9, v0, v1

    .line 519
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 520
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 530
    const-string v1, "Expected \':\'"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 524
    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 525
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v9, :cond_3

    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v9

    const/16 v10, 0x3e

    if-ne v1, v10, :cond_4

    .line 526
    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 522
    :sswitch_4
    nop

    .line 532
    .end local v0    # "c":I
    :cond_4
    :goto_0
    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    if-ne v2, v0, :cond_7

    .line 533
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_6

    .line 534
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 536
    :cond_6
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v8

    aput v5, v0, v1

    goto :goto_2

    .line 537
    :cond_7
    if-ne v2, v5, :cond_9

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 539
    .restart local v0    # "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 540
    const/16 v1, 0x11

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 542
    :cond_8
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 543
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .end local v0    # "c":I
    goto :goto_1

    .line 545
    :cond_9
    if-eq v2, v3, :cond_10

    :goto_1
    nop

    .line 549
    :goto_2
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 550
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    .line 576
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 579
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v1

    .line 580
    .local v1, "result":I
    if-eqz v1, :cond_d

    .line 581
    return v1

    .line 574
    .end local v1    # "result":I
    :sswitch_5
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 552
    :sswitch_6
    if-ne v2, v8, :cond_a

    .line 553
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 572
    :sswitch_7
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    .line 559
    :cond_a
    :sswitch_8
    if-eq v2, v8, :cond_c

    if-ne v2, v7, :cond_b

    goto :goto_3

    .line 564
    :cond_b
    const-string v1, "Unexpected value"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 560
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 561
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 562
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .line 567
    :sswitch_9
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 568
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3

    .line 570
    :sswitch_a
    const/16 v1, 0x9

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 584
    .restart local v1    # "result":I
    :cond_d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v1

    .line 585
    if-eqz v1, :cond_e

    .line 586
    return v1

    .line 589
    :cond_e
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 593
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 594
    const/16 v3, 0xa

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3

    .line 590
    :cond_f
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 546
    .end local v0    # "c":I
    .end local v1    # "result":I
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_11
    :goto_4
    sub-int/2addr v1, v8

    aput v6, v0, v1

    .line 481
    if-ne v2, v9, :cond_12

    .line 482
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 483
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 491
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 485
    :sswitch_b
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 487
    :sswitch_c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 494
    .end local v0    # "c":I
    :cond_12
    :sswitch_d
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 495
    .restart local v0    # "c":I
    const-string v1, "Expected name"

    sparse-switch v0, :sswitch_data_4

    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 509
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 510
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 511
    const/16 v1, 0xe

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 502
    :sswitch_e
    if-eq v2, v9, :cond_13

    .line 503
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 505
    :cond_13
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 499
    :sswitch_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 500
    const/16 v1, 0xc

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 497
    :sswitch_10
    const/16 v1, 0xd

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 513
    :cond_14
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

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

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 360
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 363
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 364
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 365
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 370
    return-void

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 398
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 399
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 400
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 401
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 402
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 406
    return-void

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1460
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1461
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1470
    :pswitch_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1464
    :pswitch_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    nop

    .line 1460
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 416
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLenient()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 844
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 845
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 846
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 847
    return v3

    .line 848
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 849
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 850
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 851
    return v2

    .line 853
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 887
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 891
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 892
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 893
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 894
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 897
    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 898
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 899
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 900
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 902
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 904
    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 905
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 908
    :goto_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 909
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 910
    .local v3, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 911
    :cond_8
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 912
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_9
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 915
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 916
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 917
    return-wide v3
.end method

.method public nextInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1156
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1161
    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1162
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v1, v4

    .line 1163
    .local v1, "result":I
    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1166
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1167
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1168
    return v1

    .line 1164
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1171
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1172
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1173
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 1174
    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1189
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1176
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 1178
    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1181
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1182
    .restart local v1    # "result":I
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1183
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    return v1

    .line 1185
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 1187
    nop

    .line 1192
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1193
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1194
    .local v4, "asDouble":D
    double-to-int v1, v4

    .line 1195
    .restart local v1    # "result":I
    int-to-double v6, v1

    cmpl-double v6, v6, v4

    if-nez v6, :cond_8

    .line 1198
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1199
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1200
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 1201
    return v1

    .line 1196
    :cond_8
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 936
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 937
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 938
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 939
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v1

    .line 942
    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 943
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 944
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 945
    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 960
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 947
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 949
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 952
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 953
    .local v4, "result":J
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-wide v4

    .line 956
    .end local v4    # "result":J
    :catch_0
    move-exception v1

    .line 958
    nop

    .line 963
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 964
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 965
    .local v4, "asDouble":D
    double-to-long v6, v4

    .line 966
    .local v6, "result":J
    long-to-double v8, v6

    cmpl-double v1, v8, v4

    if-nez v1, :cond_7

    .line 969
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 970
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 971
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 972
    return-wide v6

    .line 967
    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 778
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 782
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 783
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 784
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 785
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 786
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 787
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .line 791
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 792
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 793
    return-object v1

    .line 789
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 865
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 868
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 869
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 870
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 874
    return-void

    .line 872
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 806
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 810
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 811
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 813
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 814
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 815
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 816
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 817
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 818
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 819
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 820
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 822
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 823
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 827
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 828
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 829
    return-object v1

    .line 825
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 424
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 428
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 455
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 453
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 440
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 450
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 445
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 443
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 436
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 434
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 432
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 430
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

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
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    const/4 v0, 0x0

    .line 1222
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1223
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1227
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1228
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1230
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1231
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1233
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1234
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1235
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1236
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1237
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1238
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1239
    :cond_4
    const/16 v2, 0xe

    if-eq v1, v2, :cond_a

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 1241
    :cond_5
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 1243
    :cond_6
    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 1245
    :cond_7
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 1246
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    .line 1244
    :cond_8
    :goto_1
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_4

    .line 1242
    :cond_9
    :goto_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_4

    .line 1240
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1248
    :cond_b
    :goto_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1249
    .end local v1    # "p":I
    if-nez v0, :cond_c

    .line 1251
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v2, -0x1

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 1252
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 1253
    return-void

    .line 1249
    :cond_c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
