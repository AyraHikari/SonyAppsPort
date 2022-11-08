.class public final enum Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;
.super Ljava/lang/Enum;
.source "RefreshPlaylistArtWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistArtUpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

.field public static final enum FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

.field public static final enum GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

.field public static final enum PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

.field public static final enum SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;


# instance fields
.field private final mPlaylistArtType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 130
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    const-string v1, "PLAYLISTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 131
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    const-string v1, "SMARTPLAYLIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 132
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    const-string v1, "FOLDERS"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 133
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    const-string v1, "GENRES"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    .line 129
    new-array v0, v5, [Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->FOLDERS:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->GENRES:Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->$VALUES:[Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->mPlaylistArtType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;
    .locals 1

    .line 129
    const-class v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;
    .locals 1

    .line 129
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->$VALUES:[Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;

    return-object v0
.end method


# virtual methods
.method public getPlaylistArtTypeValue()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->mPlaylistArtType:I

    return v0
.end method

.method public isTypeSet(I)Z
    .locals 1

    .line 142
    iget v0, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$PlaylistArtUpdateType;->mPlaylistArtType:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
