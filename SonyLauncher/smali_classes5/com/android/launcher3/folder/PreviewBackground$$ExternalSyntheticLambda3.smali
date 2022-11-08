.class public final synthetic Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/PreviewBackground;

.field public final synthetic f$1:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/PreviewBackground;->lambda$animateToAccept$0$com-android-launcher3-folder-PreviewBackground(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V

    return-void
.end method
