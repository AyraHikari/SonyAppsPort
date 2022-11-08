.class public final enum Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;
.super Ljava/lang/Enum;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

.field public static final enum ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

.field public static final enum TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;


# instance fields
.field private final mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 630
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    const-string v1, "TRACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 631
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    const-string v1, "ALBUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    const/4 v0, 0x2

    .line 629
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 635
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 636
    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->mTypeId:I

    return-void
.end method

.method public static getType(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;
    .locals 5

    .line 644
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 645
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->getId()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;
    .locals 1

    .line 629
    const-class v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;
    .locals 1

    .line 629
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->mTypeId:I

    return v0
.end method
