.class abstract Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NavigationMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MenuItemVH"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method abstract recycleView(Landroid/content/Context;)V
.end method
