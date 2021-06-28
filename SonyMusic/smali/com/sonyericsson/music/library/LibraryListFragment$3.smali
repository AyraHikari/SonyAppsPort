.class Lcom/sonyericsson/music/library/LibraryListFragment$3;
.super Ljava/lang/Object;
.source "LibraryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

.field final synthetic val$musicActivity:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/LibraryListFragment;Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment$3;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment$3;->val$musicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment$3;->val$musicActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment$3;->val$musicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
