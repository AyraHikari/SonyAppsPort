.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Workspace;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p3, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$1:Z

    iget-object v2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$3$com-android-launcher3-Workspace(ZLjava/lang/Runnable;)V

    return-void
.end method
