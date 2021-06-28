.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;
.super Ljava/lang/Object;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItem"
.end annotation


# instance fields
.field private final mItemId:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 469
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mMimeType:Ljava/lang/String;

    .line 470
    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mItemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getItemId()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method

.method hasValidItemId()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->mItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
