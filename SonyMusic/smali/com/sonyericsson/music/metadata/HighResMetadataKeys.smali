.class public Lcom/sonyericsson/music/metadata/HighResMetadataKeys;
.super Ljava/lang/Object;
.source "HighResMetadataKeys.java"


# static fields
.field public static METADATA_BITS_PER_SAMPLE_KEY:I = -0x1

.field public static METADATA_SAMPLE_RATE_KEY:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    const-string v0, "METADATA_KEY_SAMPLERATE"

    const/4 v1, -0x1

    .line 32
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->getMediaMetadataRetrieverHiddenKey(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    const-string v0, "METADATA_KEY_BITS_PER_SAMPLE"

    .line 34
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->getMediaMetadataRetrieverHiddenKey(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3e8

    .line 39
    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    const/16 v0, 0x3e9

    .line 40
    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0x26

    .line 43
    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_SAMPLE_RATE_KEY:I

    const/16 v0, 0x27

    .line 44
    sput v0, Lcom/sonyericsson/music/metadata/HighResMetadataKeys;->METADATA_BITS_PER_SAMPLE_KEY:I

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMediaMetadataRetrieverHiddenKey(Ljava/lang/String;I)I
    .locals 1

    .line 50
    :try_start_0
    const-class v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method
