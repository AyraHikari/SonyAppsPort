.class public Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;
.super Ljava/lang/Object;
.source "BaseAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherAction"
.end annotation


# instance fields
.field public final accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final keyCode:I

.field private final mDelegate:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
    .param p2, "id"    # I
    .param p3, "labelRes"    # I
    .param p4, "keyCode"    # I

    .line 180
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>.LauncherAction;"
    iput-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->this$0:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p4, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    .line 182
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 184
    iput-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->mDelegate:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    .line 185
    return-void
.end method


# virtual methods
.method public invokeFromKeyboard(Landroid/view/View;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;

    .line 191
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>.LauncherAction;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->mDelegate:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    const/4 v3, 0x1

    .line 192
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z

    move-result v0

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
