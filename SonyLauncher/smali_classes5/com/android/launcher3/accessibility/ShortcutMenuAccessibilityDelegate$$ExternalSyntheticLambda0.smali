.class public final synthetic Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput p3, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$3:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;->f$3:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->lambda$performAction$0$com-android-launcher3-accessibility-ShortcutMenuAccessibilityDelegate(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void
.end method
