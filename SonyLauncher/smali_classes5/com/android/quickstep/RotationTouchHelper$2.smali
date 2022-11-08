.class Lcom/android/quickstep/RotationTouchHelper$2;
.super Ljava/lang/Object;
.source "RotationTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RotationTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 92
    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$2;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$2;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fputmInOverview(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$2;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0, v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$menableMultipleRegions(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 97
    return-void
.end method
