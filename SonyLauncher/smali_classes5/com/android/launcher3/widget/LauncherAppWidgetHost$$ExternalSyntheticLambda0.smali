.class public final synthetic Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/BaseActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BaseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/BaseActivity;

    iput p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/BaseActivity;

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$sendActionCancelled$0(Lcom/android/launcher3/BaseActivity;I)V

    return-void
.end method
