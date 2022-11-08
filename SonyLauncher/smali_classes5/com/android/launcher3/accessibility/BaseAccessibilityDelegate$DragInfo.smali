.class public Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
.super Ljava/lang/Object;
.source "BaseAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragInfo"
.end annotation


# instance fields
.field public dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

.field public info:Lcom/android/launcher3/model/data/ItemInfo;

.field public item:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
