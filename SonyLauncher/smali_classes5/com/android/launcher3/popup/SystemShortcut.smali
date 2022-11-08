.class public abstract Lcom/android/launcher3/popup/SystemShortcut;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "SystemShortcut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/SystemShortcut$Install;,
        Lcom/android/launcher3/popup/SystemShortcut$AppInfo;,
        Lcom/android/launcher3/popup/SystemShortcut$Widgets;,
        Lcom/android/launcher3/popup/SystemShortcut$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isEnabled:Z

.field protected mAccessibilityActionId:I

.field private final mIconResId:I

.field protected final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field protected final mLabelResId:I

.field protected final mOriginalView:Landroid/view/View;

.field protected final mTarget:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 146
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 212
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "labelResId"    # I
    .param p4, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "originalView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    .local p3, "target":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    .line 58
    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    .line 59
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 60
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    .line 61
    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    .line 62
    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 63
    iput-object p5, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    .local p1, "other":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    .line 67
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    .line 68
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 69
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    .line 70
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    .line 71
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 72
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    .line 73
    return-void
.end method

.method public static dismissTaskMenuView(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)V"
        }
    .end annotation

    .line 247
    .local p0, "activity":Landroid/content/Context;, "TT;"
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x1

    const/16 v2, 0x5d8b

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 249
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    nop

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    return-object v1

    .line 125
    :cond_1
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v1
.end method

.method static synthetic lambda$static$1(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 6
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 214
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/16 v3, 0x8

    .line 215
    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 217
    .local v0, "supportsWebUI":Z
    :goto_0
    const/4 v3, 0x0

    .line 218
    .local v3, "isInstantApp":Z
    instance-of v4, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v4, :cond_1

    .line 220
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    .line 221
    .local v4, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-static {p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v3

    .line 223
    .end local v4    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 224
    .local v1, "enabled":Z
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 225
    const/4 v2, 0x0

    return-object v2

    .line 227
    :cond_4
    new-instance v2, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iget v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 96
    return-object v0
.end method

.method public hasHandlerForAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 109
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 105
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    return v0
.end method

.method public isLeftGroup()Z
    .locals 1

    .line 79
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 101
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    .line 102
    return-void
.end method

.method public setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 90
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 93
    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "iconView"    # Landroid/view/View;
    .param p2, "labelView"    # Landroid/widget/TextView;

    .line 83
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    iget-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    return-void
.end method
