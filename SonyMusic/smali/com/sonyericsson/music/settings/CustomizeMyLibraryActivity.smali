.class public Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "CustomizeMyLibraryActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;


# instance fields
.field mAdapter:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

.field private mIsChanged:Z

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDeselected()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001e9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public onChanged()V
    .locals 1

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0c0026

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter$CustomizeMyLibraryListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mAdapter:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    const v0, 0x7f0901a2

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 50
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 55
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity$1;

    invoke-direct {v1, p0, p1, p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity$1;-><init>(Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;II)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mAdapter:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090116

    if-eq v0, v1, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mAdapter:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->resetToDefault()V

    return v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return v2
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 106
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
