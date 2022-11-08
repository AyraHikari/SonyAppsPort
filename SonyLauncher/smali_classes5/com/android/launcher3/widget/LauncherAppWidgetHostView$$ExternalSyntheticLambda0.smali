.class public final synthetic Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field public final synthetic f$1:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->lambda$onColorsChanged$0$com-android-launcher3-widget-LauncherAppWidgetHostView(Landroid/util/SparseIntArray;)V

    return-void
.end method
