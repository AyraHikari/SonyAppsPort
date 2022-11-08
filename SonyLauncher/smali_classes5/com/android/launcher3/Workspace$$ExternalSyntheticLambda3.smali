.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Workspace;

.field public final synthetic f$1:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field public final synthetic f$2:Lcom/android/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$2:Lcom/android/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;->f$2:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->lambda$onDrop$7$com-android-launcher3-Workspace(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method
