.class public final enum Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;
.super Ljava/lang/Enum;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

.field public static final enum MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;


# instance fields
.field private final mSourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 648
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    const-string v1, "MEDIA_STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    const/4 v0, 0x1

    .line 647
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 653
    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->mSourceId:I

    return-void
.end method

.method public static getSource(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;
    .locals 5

    .line 661
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 662
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;
    .locals 1

    .line 647
    const-class v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;
    .locals 1

    .line 647
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 657
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->mSourceId:I

    return v0
.end method
