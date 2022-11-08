.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Workspace;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$removeWidget$9$com-android-launcher3-Workspace(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
