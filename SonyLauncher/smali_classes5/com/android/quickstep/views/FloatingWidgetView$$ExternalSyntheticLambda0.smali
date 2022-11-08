.class public final synthetic Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/FloatingWidgetView;

.field public final synthetic f$1:Lcom/android/launcher3/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/views/FloatingWidgetView;

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/views/FloatingWidgetView;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->lambda$init$0$com-android-quickstep-views-FloatingWidgetView(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method
