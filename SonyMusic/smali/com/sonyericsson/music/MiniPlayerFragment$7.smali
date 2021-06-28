.class Lcom/sonyericsson/music/MiniPlayerFragment$7;
.super Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;
.source "MiniPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->loadAlbumArt(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

.field final synthetic val$rm:Lcom/sonyericsson/music/RetainManager;

.field final synthetic val$target:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

.field final synthetic val$track:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/RetainManager;Lcom/sonyericsson/music/common/Track;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$target:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    iput-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$rm:Lcom/sonyericsson/music/RetainManager;

    iput-object p4, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1700(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1900(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1800(Lcom/sonyericsson/music/MiniPlayerFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1702(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    if-nez p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$target:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1000(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1100(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 427
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$rm:Lcom/sonyericsson/music/RetainManager;

    invoke-static {}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$target:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1100(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 431
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$rm:Lcom/sonyericsson/music/RetainManager;

    invoke-static {}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$2000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;

    iget-object v3, p0, Lcom/sonyericsson/music/MiniPlayerFragment$7;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;-><init>(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
