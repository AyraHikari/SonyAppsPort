.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;
.super Lcom/sonyericsson/music/MusicActivity$StartupTask;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->scheduleInitLoaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity$StartupTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 3

    .line 379
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0xc

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
