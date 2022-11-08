.class Lcom/android/quickstep/RecentsAnimationDeviceState$2;
.super Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.source "RecentsAnimationDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p2, "arg0"    # I

    .line 168
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onExclusionChanged(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->-$$Nest$fputmExclusionRegion(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)V

    .line 174
    return-void
.end method
