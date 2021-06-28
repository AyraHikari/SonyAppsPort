.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;
.super Ljava/lang/Object;
.source "PlayFromSearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper;->playFirstMatchingMusicItem(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Landroid/content/Intent;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    iput-object p2, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->val$intent:Landroid/content/Intent;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$300(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)V

    goto :goto_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/sonyericsson/music/search/SearchUtils;->interpretSearchQuery(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4$1;-><init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$500(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
