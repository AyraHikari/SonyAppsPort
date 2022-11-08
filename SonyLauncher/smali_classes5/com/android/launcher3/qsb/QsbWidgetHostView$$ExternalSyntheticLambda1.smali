.class public final synthetic Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/qsb/QsbWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/qsb/QsbWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->lambda$onLayout$0$com-android-launcher3-qsb-QsbWidgetHostView()V

    return-void
.end method
