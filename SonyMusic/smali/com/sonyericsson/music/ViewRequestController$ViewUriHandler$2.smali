.class Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;
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

.field final synthetic val$playlistUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/net/Uri;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->val$playlistUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->val$playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->val$playlistUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/ViewRequestController;->access$000(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method
