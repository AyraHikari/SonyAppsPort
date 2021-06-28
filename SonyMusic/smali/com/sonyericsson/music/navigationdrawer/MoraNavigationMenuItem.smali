.class Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.source "MoraNavigationMenuItem.java"


# instance fields
.field private final mFragmentTitle:Ljava/lang/String;

.field private mStorePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/sonyericsson/music/library/StorePagerFragment;

    invoke-direct {p0, p2, p3, v0, p6}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 30
    iput-object p4, p0, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;->mStorePages:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;->mFragmentTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDestinationFragment()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mDestinationFragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 43
    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;->mFragmentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fragment_tag"

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_store_pages"

    .line 45
    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;->mStorePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
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
