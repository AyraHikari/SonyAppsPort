.class Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout$ViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/launcher3/CellLayout$ViewCluster;

    .line 1641
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1642
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1645
    .local v0, "l":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1646
    .local v1, "r":Lcom/android/launcher3/util/CellAndSpan;
    iget v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    packed-switch v2, :pswitch_data_0

    .line 1655
    :pswitch_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, v3

    return v2

    .line 1650
    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, v3

    return v2

    .line 1652
    :pswitch_2
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    return v2

    .line 1648
    :pswitch_3
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1641
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
