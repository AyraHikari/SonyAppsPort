.class Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem$MenuTopItemVH;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;
.source "NavigationMenuTopItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuTopItemVH"
.end annotation


# static fields
.field static final LAYOUT:I = 0x7f0c0082


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;-><init>(Landroid/view/View;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {}, Lcom/sonyericsson/music/common/UIUtils;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 43
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method recycleView(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
