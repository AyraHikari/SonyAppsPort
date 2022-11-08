.class public final Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsListHeaderHolder.java"


# instance fields
.field final mWidgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;->mWidgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 31
    return-void
.end method
