.class public final synthetic Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/PreviewBackground;

.field public final synthetic f$1:Lcom/android/launcher3/CellLayout;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;IILcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$4:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;->f$4:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/folder/PreviewBackground;->lambda$animateToRest$2$com-android-launcher3-folder-PreviewBackground(Lcom/android/launcher3/CellLayout;IILcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method
