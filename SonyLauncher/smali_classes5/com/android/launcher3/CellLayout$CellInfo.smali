.class public final Lcom/android/launcher3/CellLayout$CellInfo;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation


# instance fields
.field public final cell:Landroid/view/View;

.field final container:I

.field final screenId:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2946
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 2947
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    .line 2948
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    .line 2949
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2950
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 2951
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2952
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    .line 2953
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    .line 2954
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
