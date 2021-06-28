.class public Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;
.super Ljava/lang/Object;
.source "AlbumActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/AlbumActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreatePlaylistFromAlbumData"
.end annotation


# instance fields
.field mAlbum:Ljava/lang/String;

.field mArtist:Ljava/lang/String;

.field mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;->mId:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;->mAlbum:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;->mArtist:Ljava/lang/String;

    return-void
.end method
