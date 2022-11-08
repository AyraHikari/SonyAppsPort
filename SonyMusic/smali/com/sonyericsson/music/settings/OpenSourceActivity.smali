.class public Lcom/sonyericsson/music/settings/OpenSourceActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "OpenSourceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/settings/OpenSourceActivity$OssViewHolder;,
        Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mRecycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    const p1, 0x7f0c0092

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f100290

    .line 47
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    const p1, 0x7f0901a2

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    new-instance p1, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;-><init>(Lcom/sonyericsson/music/settings/OpenSourceActivity;)V

    iput-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mAdapter:Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/OpenSourceActivity;->mAdapter:Lcom/sonyericsson/music/settings/OpenSourceActivity$OssAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 59
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
