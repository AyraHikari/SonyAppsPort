.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setup(ILandroidx/drawerlayout/widget/DrawerLayout;)V
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

    .line 579
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1400(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1300(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->onDrawerOpened(Landroid/view/View;)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1400(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1300(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->onDrawerClosed(Landroid/view/View;)V

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1500(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_1
    return-void
.end method
