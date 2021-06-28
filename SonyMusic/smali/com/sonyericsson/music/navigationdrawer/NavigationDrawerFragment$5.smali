.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


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
.method constructor <init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    .line 506
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .line 510
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 512
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$700(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$800(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$802(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Z)Z

    .line 522
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "navigation_drawer_learned"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$200(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$100(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$000(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$100(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 533
    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$900(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v3}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1000(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$202(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Z)Z

    .line 538
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 543
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 545
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$700(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1100(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 552
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$1200(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    const/4 p2, 0x0

    .line 562
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    return-void
.end method
