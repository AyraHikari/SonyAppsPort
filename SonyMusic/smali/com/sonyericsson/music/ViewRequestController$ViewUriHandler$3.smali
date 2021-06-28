.class Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;
.super Ljava/lang/Object;
.source "ViewRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->handleViewUriIntent(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$playbackPos:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$trackUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    iput p3, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$playbackPos:I

    iput-object p4, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$artist:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$album:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 643
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 644
    sget-object v2, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->FILE_ACCESS_PERMISSION_DENIED:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    if-ne v1, v2, :cond_0

    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    if-ne v1, v2, :cond_1

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v1, v1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 655
    iget v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$playbackPos:I

    const/4 v7, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$artist:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$album:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$title:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v7}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    goto :goto_1

    .line 657
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$trackUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$album:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$artist:Ljava/lang/String;

    iget v6, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->val$playbackPos:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 661
    :goto_1
    invoke-virtual {v0, v7}, Lcom/sonyericsson/music/player/PlayerController;->setRepeatMode(I)V

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/ViewRequestController;->access$000(Lcom/sonyericsson/music/MusicActivity;)V

    :cond_4
    return-void
.end method
