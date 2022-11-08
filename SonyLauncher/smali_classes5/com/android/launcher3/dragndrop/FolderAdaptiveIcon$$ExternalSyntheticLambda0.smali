.class public final synthetic Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/ActivityContext;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/graphics/Canvas;

.field public final synthetic f$4:Landroid/graphics/Canvas;

.field public final synthetic f$5:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ActivityContext;

    iput p2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Canvas;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Canvas;

    iput-object p6, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$5:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ActivityContext;

    iget v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;->f$5:Landroid/graphics/Canvas;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void
.end method
