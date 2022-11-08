.class public final enum Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;
.super Ljava/lang/Enum;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

.field public static final enum ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

.field public static final enum ARTIST:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

.field public static final enum TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;


# instance fields
.field private final mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1100
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ARTIST:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    .line 1101
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    const-string v1, "ALBUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    .line 1102
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    const-string v1, "TRACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    const/4 v0, 0x3

    .line 1099
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ARTIST:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1107
    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->mTypeId:I

    return-void
.end method

.method public static getType(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;
    .locals 5

    .line 1115
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1116
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->id()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No type for id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;
    .locals 1

    .line 1099
    const-class v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;
    .locals 1

    .line 1099
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 1111
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->mTypeId:I

    return v0
.end method
