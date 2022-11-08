.class public Lcom/android/launcher3/widget/WidgetItemComparator;
.super Ljava/lang/Object;
.source "WidgetItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mMyUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    .line 32
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 7
    .param p1, "a"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "b"    # Lcom/android/launcher3/model/WidgetItem;

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 39
    .local v0, "thisWorkProfile":Z
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 40
    .local v2, "otherWorkProfile":Z
    xor-int v3, v0, v2

    if-eqz v3, :cond_1

    .line 41
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    iget-object v3, p1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "labelCompare":I
    if-eqz v1, :cond_2

    .line 46
    return v1

    .line 51
    :cond_2
    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v3, v4

    .line 52
    .local v3, "thisArea":I
    iget v4, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v4, v5

    .line 53
    .local v4, "otherArea":I
    if-ne v3, v4, :cond_3

    .line 54
    iget v5, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v6, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    goto :goto_1

    .line 55
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    .line 53
    :goto_1
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetItemComparator;->compare(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result p1

    return p1
.end method
