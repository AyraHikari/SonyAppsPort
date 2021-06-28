.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$7;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->populateList()V
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

    .line 773
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$7;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$7;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1600(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 780
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;

    .line 781
    invoke-interface {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;->onStaticItemsLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method
