.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;
.super Ljava/lang/Object;
.source "MusicInfoProviderHighResMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerifiedMedia"
.end annotation


# instance fields
.field final hiResAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tracksToBeParsed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final tracksToBeRemovedFromMusicInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tracksUnavailableInMediaStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeParsed:Ljava/util/Map;

    .line 598
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksToBeRemovedFromMusicInfo:Ljava/util/List;

    .line 599
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->tracksUnavailableInMediaStore:Ljava/util/List;

    .line 600
    iput-object p4, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$VerifiedMedia;->hiResAlbums:Ljava/util/List;

    return-void
.end method
