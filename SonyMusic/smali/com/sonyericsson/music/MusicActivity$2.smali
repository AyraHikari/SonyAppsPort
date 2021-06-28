.class Lcom/sonyericsson/music/MusicActivity$2;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStaticItemsLoaded()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->removeMenuLoadedListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$100(Lcom/sonyericsson/music/MusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->access$102(Lcom/sonyericsson/music/MusicActivity;Z)Z

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    new-instance v1, Lcom/sonyericsson/music/MusicActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$2$1;-><init>(Lcom/sonyericsson/music/MusicActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
