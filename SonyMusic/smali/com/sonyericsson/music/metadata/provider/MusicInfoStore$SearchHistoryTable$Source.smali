.class public final enum Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
.super Ljava/lang/Enum;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

.field public static final enum MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;


# instance fields
.field private final mSourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1069
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    const-string v1, "MEDIA_STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    const/4 v0, 0x1

    .line 1068
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1073
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1074
    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->mSourceId:I

    return-void
.end method

.method public static getSource(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
    .locals 5

    .line 1082
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1083
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->id()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No source for id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
    .locals 1

    .line 1068
    const-class v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
    .locals 1

    .line 1068
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 1078
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->mSourceId:I

    return v0
.end method
