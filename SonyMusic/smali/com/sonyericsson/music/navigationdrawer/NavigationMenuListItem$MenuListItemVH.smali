.class Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;
.source "NavigationMenuListItem.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuListItemVH"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;
    }
.end annotation


# static fields
.field static final LAYOUT:I = 0x7f0c0081


# instance fields
.field private final mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

.field private mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

.field private mMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;-><init>(Landroid/view/View;)V

    .line 176
    check-cast p1, Lcom/sonyericsson/music/ui/DrawerItemView;

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    return-void
.end method

.method private bindListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    .line 187
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    return-void
.end method


# virtual methods
.method bindView(Landroid/content/Context;Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->bindListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 197
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 198
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 199
    check-cast v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    .line 200
    sget-object v3, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->UPDATE_ALL:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    sget-object v3, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->SET_HIGHLIGHT:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz p3, :cond_5

    .line 212
    iget-object p4, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getMenuTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/sonyericsson/music/ui/DrawerItemView;->setTitle(Ljava/lang/String;)V

    .line 213
    iget-object p4, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    invoke-static {p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->access$000(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getIconResourceId()I

    move-result p4

    .line 216
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getTargetResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p1

    if-lez p4, :cond_4

    if-eqz p1, :cond_4

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean p4, p2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mThemeIcon:Z

    invoke-virtual {v2, p1, p4}, Lcom/sonyericsson/music/ui/DrawerItemView;->setIcon(Landroid/graphics/drawable/Drawable;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 221
    :catch_0
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, v0}, Lcom/sonyericsson/music/ui/DrawerItemView;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    .line 225
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->hasContextMenu()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/DrawerItemView;->setHasContextMenu(Z)V

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mItem:Lcom/sonyericsson/music/ui/DrawerItemView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->setClickListener(Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;)V

    :cond_5
    if-nez p3, :cond_6

    if-eqz v1, :cond_7

    .line 230
    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public onContextMenuClicked(Landroid/view/View;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->onContextMenuClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onItemClicked(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->mListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method recycleView(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;->bindListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)V

    return-void
.end method
