.class public final synthetic Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic f$1:Landroid/graphics/Path;

.field public final synthetic f$2:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Path;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$2$com-android-launcher3-dragndrop-DragView(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
