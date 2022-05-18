.class public Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.source "MyLibraryNavigationMenuItem.java"


# instance fields
.field private final mFragmentTitle:Ljava/lang/String;

.field private final mMenuItemTag:Ljava/lang/String;

.field private final mMyLibraryPage:Lcom/sonyericsson/music/library/Page;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/library/Page;)V
    .locals 4

    .line 29
    invoke-virtual {p2}, Lcom/sonyericsson/music/library/Page;->getTitleResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/Page;->getDrawableResId()I

    move-result v1

    const-class v2, Lcom/sonyericsson/music/library/MyLibraryFragment;

    const-string v3, "my_library_tag"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mMyLibraryPage:Lcom/sonyericsson/music/library/Page;

    const v0, 0x7f100194

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mFragmentTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/sonyericsson/music/library/Page;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mMenuItemTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDestinationFragment()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mDestinationFragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 54
    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mFragmentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "page_key"

    .line 55
    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mMyLibraryPage:Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentData()Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;
    .locals 3

    .line 38
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;

    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->getDestinationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-super {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMenuItemTag()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mMenuItemTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMyLibraryPage()Lcom/sonyericsson/music/library/Page;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->mMyLibraryPage:Lcom/sonyericsson/music/library/Page;

    return-object v0
.end method
