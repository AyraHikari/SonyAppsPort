.class public final synthetic Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/ArrowTipView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ArrowTipView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ArrowTipView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ArrowTipView;->lambda$handleClose$0$com-android-launcher3-views-ArrowTipView()V

    return-void
.end method