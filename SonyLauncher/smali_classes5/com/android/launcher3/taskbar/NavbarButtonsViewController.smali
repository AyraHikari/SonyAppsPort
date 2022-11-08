.class public Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.super Ljava/lang/Object;
.source "NavbarButtonsViewController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;
    }
.end annotation


# static fields
.field public static final ALPHA_INDEX_IMMERSIVE_MODE:I = 0x0

.field public static final ALPHA_INDEX_KEYGUARD_OR_DISABLE:I = 0x1

.field private static final FLAG_A11Y_VISIBLE:I = 0x8

.field private static final FLAG_DISABLE_BACK:I = 0x200

.field private static final FLAG_DISABLE_HOME:I = 0x80

.field private static final FLAG_DISABLE_RECENTS:I = 0x100

.field private static final FLAG_IME_VISIBLE:I = 0x2

.field private static final FLAG_KEYGUARD_OCCLUDED:I = 0x40

.field private static final FLAG_KEYGUARD_VISIBLE:I = 0x20

.field private static final FLAG_NOTIFICATION_SHADE_EXPANDED:I = 0x400

.field private static final FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE:I = 0x10

.field private static final FLAG_ROTATION_BUTTON_VISIBLE:I = 0x4

.field private static final FLAG_SCREEN_PINNING_ACTIVE:I = 0x800

.field private static final FLAG_SWITCHER_SUPPORTED:I = 0x1

.field private static final MASK_IME_SWITCHER_VISIBLE:I = 0x3

.field private static final NAV_BUTTONS_SEPARATE_WINDOW_TITLE:Ljava/lang/String; = "Taskbar Nav Buttons"

.field private static final NUM_ALPHA_CHANNELS:I = 0x2


# instance fields
.field private mA11yButton:Landroid/view/View;

.field private final mAllButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mAreNavButtonsInSeparateWindow:Z

.field private mBackButton:Landroid/view/View;

.field private mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDarkIconColor:I

.field private final mEndContextualContainer:Landroid/view/ViewGroup;

.field private mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field private final mFloatingRotationButtonBounds:Landroid/graphics/Rect;

.field private final mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mIsImeRenderingNavButtons:Z

.field private final mLightIconColor:I

.field private final mNavButtonContainer:Landroid/view/ViewGroup;

.field private final mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

.field private final mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

.field private final mNavButtonsView:Landroid/widget/FrameLayout;

.field private final mPropertyHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

.field private final mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

.field private mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartContextualContainer:Landroid/view/ViewGroup;

.field private mState:I

.field private mSysuiStateFlags:I

.field private final mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$M2qmS15PTTcFwH4DYU2D95Upm4o(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonTranslationY()V

    return-void
.end method

.method public static synthetic $r8$lambda$as1YQM1bSDx0eFh5K94ssslWyZw(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonDarkIntensity()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4QUbWuGsmTwYHivXtkkiB9J8vg(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onComputeInsetsForSeparateWindow(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wxKTA7cglxZpcd_NWO76xbyPAQk(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonInAppDisplayProgressForSysui()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingRotationButton(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/rotation/FloatingRotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingRotationButtonBounds(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeparateWindowInsetsComputer(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeparateWindowParent(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyState(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "navButtonsView"    # Landroid/widget/FrameLayout;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    .line 132
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    .line 134
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    .line 137
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    .line 139
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    .line 141
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    .line 143
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    .line 161
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    .line 163
    new-instance v0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    .line 166
    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 167
    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    .line 168
    sget v0, Lcom/android/launcher3/R$id;->end_nav_buttons:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    .line 169
    sget v0, Lcom/android/launcher3/R$id;->end_contextual_buttons:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    .line 170
    sget v0, Lcom/android/launcher3/R$id;->start_contextual_buttons:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    .line 172
    sget v0, Lcom/android/launcher3/R$color;->taskbar_nav_icon_light_color:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    .line 173
    sget v0, Lcom/android/launcher3/R$color;->taskbar_nav_icon_dark_color:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    .line 174
    return-void
.end method

.method private addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;
    .locals 3
    .param p1, "drawableId"    # I
    .param p2, "buttonType"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p5, "id"    # I
    .param p6, "layoutId"    # I

    .line 625
    invoke-direct {p0, p3, p5, p6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object v0

    .line 626
    .local v0, "buttonView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 628
    invoke-virtual {p4, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->getButtonContentDescription(I)I

    move-result v2

    .line 627
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p4, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda20;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p4, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda21;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 632
    return-object v0
.end method

.method private addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "layoutId"    # I

    .line 636
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 638
    .local v0, "buttonView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 640
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    return-object v0
.end method

.method private applyState()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 579
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setState(I)V

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 738
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 739
    .local v0, "str":Ljava/util/StringJoiner;
    const/4 v1, 0x1

    const-string v2, "FLAG_SWITCHER_SUPPORTED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 740
    const/4 v1, 0x2

    const-string v2, "FLAG_IME_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 741
    const/4 v1, 0x4

    const-string v2, "FLAG_ROTATION_BUTTON_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 742
    const/16 v1, 0x8

    const-string v2, "FLAG_A11Y_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 743
    const/16 v1, 0x10

    const-string v2, "FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 745
    const/16 v1, 0x20

    const-string v2, "FLAG_KEYGUARD_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 746
    const/16 v1, 0x40

    const-string v2, "FLAG_KEYGUARD_OCCLUDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 747
    const/16 v1, 0x80

    const-string v2, "FLAG_DISABLE_HOME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 748
    const/16 v1, 0x100

    const-string v2, "FLAG_DISABLE_RECENTS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 749
    const/16 v1, 0x200

    const-string v2, "FLAG_DISABLE_BACK"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 750
    const/16 v1, 0x400

    const-string v2, "FLAG_NOTIFICATION_SHADE_EXPANDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 752
    const/16 v1, 0x800

    const-string v2, "FLAG_SCREEN_PINNING_ACTIVE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .locals 17
    .param p1, "navContainer"    # Landroid/view/ViewGroup;
    .param p2, "endContainer"    # Landroid/view/ViewGroup;
    .param p3, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    .line 369
    move-object/from16 v7, p0

    sget v1, Lcom/android/launcher3/R$drawable;->ic_sysbar_back:I

    iget-object v3, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget v5, Lcom/android/launcher3/R$id;->back:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    .line 371
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 372
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 373
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 374
    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    .line 373
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    .line 385
    .local v9, "isRtl":Z
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v11, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    new-instance v12, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v12, v7}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    sget-object v13, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 387
    if-eqz v9, :cond_0

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    :goto_0
    move v14, v2

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    .line 385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 391
    .local v10, "navButtonSize":I
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v12, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    new-instance v13, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v13}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda14;-><init>()V

    sget-object v14, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    .line 394
    if-eqz v9, :cond_1

    const/4 v2, -0x2

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    mul-int/2addr v2, v10

    int-to-float v15, v2

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget v1, Lcom/android/launcher3/R$drawable;->ic_sysbar_home:I

    const/4 v2, 0x2

    sget v5, Lcom/android/launcher3/R$id;->home:I

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    .line 399
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 400
    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 401
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 402
    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda15;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget v1, Lcom/android/launcher3/R$drawable;->ic_sysbar_recent:I

    const/4 v2, 0x4

    sget v5, Lcom/android/launcher3/R$id;->recent_apps:I

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v8

    .line 410
    .local v8, "recentsButton":Landroid/view/View;
    iget-object v11, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iget-object v13, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v15, v7, v8}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/View;)V

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    move-object v12, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 417
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;

    move-object/from16 v11, p3

    invoke-direct {v0, v7, v11}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda17;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v7}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda18;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v1, v8, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget v1, Lcom/android/launcher3/R$drawable;->ic_sysbar_accessibility_button:I

    const/16 v2, 0x10

    sget v5, Lcom/android/launcher3/R$id;->accessibility_button:I

    sget v6, Lcom/android/launcher3/R$layout;->taskbar_contextual_button:I

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/view/View;

    .line 429
    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method static synthetic lambda$addButton$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V
    .locals 0
    .param p0, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p1, "buttonType"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    return-void
.end method

.method static synthetic lambda$addButton$16(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .locals 1
    .param p0, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p1, "buttonType"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonLongClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$init$0(I)Z
    .locals 2
    .param p0, "flags"    # I

    .line 192
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$1(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 199
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x800

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$2(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 203
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$3(II)Z
    .locals 1
    .param p0, "flagsToRemoveTranslation"    # I
    .param p1, "flags"    # I

    .line 214
    and-int v0, p1, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$4(ZI)Z
    .locals 1
    .param p0, "isInKidsMode"    # Z
    .param p1, "flags"    # I

    .line 222
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$5(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 312
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$init$6(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 342
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initButtons$10(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 404
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initButtons$14(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 430
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initButtons$7(I)Z
    .locals 4
    .param p0, "flags"    # I

    .line 378
    and-int/lit8 v0, p0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 381
    .local v0, "showingOnKeyguard":Z
    :goto_1
    and-int/lit16 v3, p0, 0x200

    if-nez v3, :cond_3

    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method static synthetic lambda$initButtons$9(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 392
    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onComputeInsetsForSeparateWindow(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 2
    .param p1, "insetsInfo"    # Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;

    .line 716
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    .line 717
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    .line 718
    return-void
.end method

.method private parseSystemUiFlags(I)V
    .locals 13
    .param p1, "sysUiStateFlags"    # I

    .line 435
    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    .line 436
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 437
    .local v0, "isImeVisible":Z
    :goto_0
    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 438
    .local v3, "isImeSwitcherShowing":Z
    :goto_1
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 439
    .local v4, "a11yVisible":Z
    :goto_2
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 440
    .local v5, "isHomeDisabled":Z
    :goto_3
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    .line 441
    .local v6, "isRecentsDisabled":Z
    :goto_4
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v1

    .line 442
    .local v7, "isBackDisabled":Z
    :goto_5
    const/16 v8, 0x804

    .line 444
    .local v8, "shadeExpandedFlags":I
    and-int v9, p1, v8

    if-eqz v9, :cond_6

    move v9, v2

    goto :goto_6

    :cond_6
    move v9, v1

    .line 445
    .local v9, "isNotificationShadeExpanded":Z
    :goto_6
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_7

    move v10, v2

    goto :goto_7

    :cond_7
    move v10, v1

    .line 448
    .local v10, "isScreenPinningActive":Z
    :goto_7
    const/4 v11, 0x2

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 449
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 450
    const/16 v11, 0x8

    invoke-direct {p0, v11, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 451
    const/16 v11, 0x80

    invoke-direct {p0, v11, v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 452
    const/16 v11, 0x100

    invoke-direct {p0, v11, v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 453
    const/16 v11, 0x200

    invoke-direct {p0, v11, v7}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 454
    const/16 v11, 0x400

    invoke-direct {p0, v11, v9}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 455
    const/16 v11, 0x800

    invoke-direct {p0, v11, v10}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 457
    iget-object v11, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/view/View;

    if-eqz v11, :cond_9

    .line 459
    and-int/lit8 v12, p1, 0x20

    if-eqz v12, :cond_8

    move v1, v2

    .line 461
    .local v1, "a11yLongClickable":Z
    :cond_8
    invoke-virtual {v11, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 463
    .end local v1    # "a11yLongClickable":Z
    :cond_9
    return-void
.end method

.method private updateNavButtonDarkIntensity()V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v0, v1

    .line 609
    .local v0, "darkIntensity":F
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    .line 610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 609
    invoke-virtual {v1, v0, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 611
    .local v1, "iconColor":I
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 612
    .local v3, "button":Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 613
    .end local v3    # "button":Landroid/widget/ImageView;
    goto :goto_0

    .line 614
    :cond_0
    return-void
.end method

.method private updateNavButtonInAppDisplayProgressForSysui()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 586
    .local v0, "uiController":Lcom/android/launcher3/taskbar/TaskbarUIController;
    instance-of v1, v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v1, :cond_0

    .line 587
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    .line 590
    :cond_0
    return-void
.end method

.method private updateNavButtonTranslationY()V
    .locals 6

    .line 593
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 594
    .local v0, "normalTranslationY":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 595
    .local v1, "imeAdjustmentTranslationY":F
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 597
    .local v2, "uiController":Lcom/android/launcher3/taskbar/TaskbarUIController;
    instance-of v3, v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    .line 598
    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldUseInAppLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 601
    .local v3, "inAppDisplayAdjustmentTranslationY":F
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    add-float v5, v0, v1

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 604
    return-void
.end method

.method private updateStateForFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 570
    if-eqz p2, :cond_0

    .line 571
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    goto :goto_0

    .line 573
    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    .line 575
    :goto_0
    return-void
.end method


# virtual methods
.method protected addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;
    .locals 7
    .param p1, "drawableId"    # I
    .param p2, "buttonType"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p5, "id"    # I

    .line 618
    sget v6, Lcom/android/launcher3/R$layout;->taskbar_nav_button:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V
    .locals 6
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 519
    .local p1, "parent":Lcom/android/launcher3/views/BaseDragLayer;, "Lcom/android/launcher3/views/BaseDragLayer<*>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 520
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 521
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 522
    .local v2, "button":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 524
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->extendedHitboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 520
    .end local v2    # "button":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NavbarButtonsViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    .line 726
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 725
    const-string v3, "%s\tmLightIconColor=0x%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    .line 728
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 727
    const-string v3, "%s\tmDarkIconColor=0x%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    aput-object v3, v1, v4

    const-string v3, "%s\tmFloatingRotationButtonBounds=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    .line 734
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 731
    const-string v1, "%s\tmSysuiStateFlags=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public getBackButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object v0
.end method

.method public getHomeButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object v0
.end method

.method public getNavButtonDarkIntensityMultiplier()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarNavButtonDarkIntensity()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarNavButtonTranslationY()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTouchController()Lcom/android/launcher3/util/TouchController;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 33
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 180
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iput-object v7, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 181
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v8

    .line 184
    .local v8, "isThreeButtonNav":Z
    nop

    .line 185
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->imeDrawsImeNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    iput-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    .line 186
    if-nez v0, :cond_2

    .line 188
    sget v1, Lcom/android/launcher3/R$drawable;->ic_ime_switcher:I

    const/16 v2, 0x8

    .line 189
    if-eqz v8, :cond_1

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    :goto_1
    move-object v3, v0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget v5, Lcom/android/launcher3/R$id;->ime_switcher:I

    .line 188
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 191
    .local v0, "imeSwitcherButton":Landroid/view/View;
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "imeSwitcherButton":Landroid/view/View;
    :cond_2
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 197
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v9}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 203
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getKeyguardBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    xor-int/2addr v0, v9

    move v11, v0

    .line 207
    .local v11, "isInSetup":Z
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v12

    .line 208
    .local v12, "isInKidsMode":Z
    if-nez v8, :cond_4

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v9

    :goto_3
    move v13, v0

    .line 212
    .local v13, "alwaysShowButtons":Z
    const/16 v14, 0x402

    .line 213
    .local v14, "flagsToRemoveTranslation":I
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v14}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda8;-><init>(I)V

    sget-object v18, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    .line 218
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getTaskbarHeightForIme()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v21, v0, v1

    .line 220
    .local v21, "transForIme":F
    const/4 v0, 0x0

    if-eqz v13, :cond_5

    move/from16 v20, v0

    goto :goto_4

    :cond_5
    move/from16 v20, v21

    .line 221
    .local v20, "defaultButtonTransY":F
    :goto_4
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v4, v12}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda9;-><init>(Z)V

    sget-object v18, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    if-eqz v13, :cond_a

    .line 226
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-direct {v6, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    .line 229
    if-eqz v11, :cond_8

    .line 232
    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    .line 233
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .local v2, "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 235
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 236
    const v3, 0x800003

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 241
    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 243
    .local v3, "mode":I
    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    goto :goto_5

    :cond_6
    move v9, v10

    :goto_5
    move v4, v9

    .line 244
    .local v4, "isDarkTheme":Z
    iget-object v5, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v5, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .end local v2    # "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "mode":I
    .end local v4    # "isDarkTheme":Z
    goto/16 :goto_7

    .line 245
    :cond_8
    if-eqz v12, :cond_9

    .line 246
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->taskbar_icon_size_kids:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 248
    .local v0, "iconSize":I
    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_width_kids:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 250
    .local v2, "buttonWidth":I
    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_height_kids:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 252
    .local v3, "buttonHeight":I
    iget-object v4, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_corner_radius_kids:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 254
    .local v4, "buttonRadius":I
    sub-int v5, v2, v0

    div-int/lit8 v5, v5, 0x2

    .line 255
    .local v5, "paddingleft":I
    move v9, v5

    .line 256
    .local v9, "paddingRight":I
    sub-int v16, v3, v0

    div-int/lit8 v15, v16, 0x2

    .line 257
    .local v15, "paddingTop":I
    move/from16 v16, v15

    .line 260
    .local v16, "paddingBottom":I
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v22, v0

    .end local v0    # "iconSize":I
    .local v22, "iconSize":I
    sget v0, Lcom/android/launcher3/R$drawable;->ic_sysbar_back_kids:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 263
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    move/from16 v1, v16

    .end local v16    # "paddingBottom":I
    .local v1, "paddingBottom":I
    invoke-virtual {v0, v5, v15, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v7, Lcom/android/launcher3/R$drawable;->ic_sysbar_home_kids:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v5, v15, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v0, "homeLayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/launcher3/R$dimen;->taskbar_home_button_left_margin_kids:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 276
    .local v7, "homeButtonLeftMargin":I
    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    iget-object v10, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v10, "backLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v16, v0

    .end local v0    # "homeLayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "homeLayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v23, v1

    .end local v1    # "paddingBottom":I
    .local v23, "paddingBottom":I
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_back_button_left_margin_kids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 286
    .local v0, "backButtonLeftMargin":I
    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const v1, 0x3dcccccd    # 0.1f

    move/from16 v24, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v0    # "backButtonLeftMargin":I
    .local v24, "backButtonLeftMargin":I
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    .line 291
    .local v0, "whiteWith10PctAlpha":I
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 292
    .local v1, "buttonBackground":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v18, v0

    .end local v0    # "whiteWith10PctAlpha":I
    .local v18, "whiteWith10PctAlpha":I
    int-to-float v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 293
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 299
    .local v0, "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v25

    move-object/from16 v26, v1

    .end local v1    # "buttonBackground":Landroid/graphics/drawable/PaintDrawable;
    .local v26, "buttonBackground":Landroid/graphics/drawable/PaintDrawable;
    div-int/lit8 v1, v25, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 300
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 301
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 302
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 304
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v25, "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_8

    .line 245
    .end local v2    # "buttonWidth":I
    .end local v3    # "buttonHeight":I
    .end local v4    # "buttonRadius":I
    .end local v5    # "paddingleft":I
    .end local v7    # "homeButtonLeftMargin":I
    .end local v9    # "paddingRight":I
    .end local v10    # "backLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "paddingTop":I
    .end local v16    # "homeLayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "whiteWith10PctAlpha":I
    .end local v22    # "iconSize":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "backButtonLeftMargin":I
    .end local v25    # "navButtonsLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v26    # "buttonBackground":Landroid/graphics/drawable/PaintDrawable;
    :cond_9
    :goto_7
    nop

    .line 310
    :goto_8
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 311
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNavbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/android/launcher3/R$id;->rotate_suggestion:I

    sget v3, Lcom/android/launcher3/R$layout;->taskbar_contextual_button:I

    .line 318
    invoke-direct {v6, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/widget/ImageView;)V

    .line 320
    .local v0, "rotationButton":Lcom/android/systemui/shared/rotation/RotationButton;
    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->hide()Z

    .line 321
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    .line 322
    .end local v0    # "rotationButton":Lcom/android/systemui/shared/rotation/RotationButton;
    goto :goto_a

    .line 323
    :cond_a
    new-instance v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    sget v24, Lcom/android/launcher3/R$string;->accessibility_rotate_button:I

    sget v25, Lcom/android/launcher3/R$layout;->rotate_suggestion:I

    sget v26, Lcom/android/launcher3/R$id;->rotate_suggestion:I

    sget v27, Lcom/android/launcher3/R$dimen;->floating_rotation_button_min_margin:I

    sget v28, Lcom/android/launcher3/R$dimen;->rounded_corner_content_padding:I

    sget v29, Lcom/android/launcher3/R$dimen;->floating_rotation_button_taskbar_left_margin:I

    sget v30, Lcom/android/launcher3/R$dimen;->floating_rotation_button_taskbar_bottom_margin:I

    sget v31, Lcom/android/launcher3/R$dimen;->floating_rotation_button_diameter:I

    sget v32, Lcom/android/launcher3/R$dimen;->key_button_ripple_max_width:I

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v32}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;-><init>(Landroid/content/Context;IIIIIIIII)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 333
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    .line 336
    iget-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-nez v0, :cond_c

    .line 337
    sget v1, Lcom/android/launcher3/R$drawable;->ic_sysbar_back:I

    const/4 v2, 0x1

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget v5, Lcom/android/launcher3/R$id;->back:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 339
    .local v0, "imeDownButton":Landroid/view/View;
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_9

    :cond_b
    const/high16 v1, -0x3d4c0000    # -90.0f

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 341
    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v0    # "imeDownButton":Landroid/view/View;
    :cond_c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    .line 347
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 350
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    .line 363
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    .line 364
    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isHomeDisabled()Z
    .locals 1

    .line 505
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImeVisible()Z
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecentsDisabled()Z
    .locals 1

    .line 512
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$initButtons$11$com-android-launcher3-taskbar-NavbarButtonsViewController(Landroid/view/View;)[F
    .locals 3
    .param p1, "recentsButton"    # Landroid/view/View;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 413
    .local v0, "recentsCoords":[F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 415
    return-object v0
.end method

.method synthetic lambda$initButtons$12$com-android-launcher3-taskbar-NavbarButtonsViewController(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V
    .locals 1
    .param p1, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p2, "v"    # Landroid/view/View;

    .line 418
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onRecentsButtonClicked()V

    .line 420
    return-void
.end method

.method synthetic lambda$initButtons$13$com-android-launcher3-taskbar-NavbarButtonsViewController(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 422
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 423
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0
.end method

.method synthetic lambda$initButtons$8$com-android-launcher3-taskbar-NavbarButtonsViewController(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 386
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveNavButtonsBackToTaskbarWindow()V
    .locals 2

    .line 705
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    .line 710
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Landroid/view/View;)V

    .line 711
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 712
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->addView(Landroid/view/View;)V

    .line 713
    return-void
.end method

.method public moveNavButtonsToNewWindow()V
    .locals 3

    .line 668
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-eqz v0, :cond_0

    .line 669
    return-void

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-eqz v0, :cond_1

    .line 674
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    .line 693
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->removeView(Landroid/view/View;)V

    .line 694
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 695
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 696
    .local v0, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Taskbar Nav Buttons"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 699
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .param p1, "configChanges"    # I

    .line 649
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->onConfigurationChanged(I)V

    .line 652
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->unregisterListeners()V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()Z

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow()V

    .line 662
    return-void
.end method

.method public setBackForBouncer(Z)V
    .locals 1
    .param p1, "isBouncerVisible"    # Z

    .line 480
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 481
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    .line 482
    return-void
.end method

.method public setKeyguardVisible(ZZ)V
    .locals 2
    .param p1, "isKeyguardVisible"    # Z
    .param p2, "isKeyguardOccluded"    # Z

    .line 489
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 490
    const/16 v0, 0x40

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    .line 491
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    .line 492
    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 2
    .param p1, "systemUiStateFlags"    # I
    .param p2, "skipAnim"    # Z

    .line 466
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    if-ne p1, v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->parseSystemUiFlags(I)V

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    .line 471
    if-eqz p2, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 474
    :cond_1
    return-void
.end method

.method public updateTaskbarAlignment(F)V
    .locals 1
    .param p1, "alignment"    # F

    .line 764
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onAnimationProgressToOverview(F)V

    .line 765
    return-void
.end method
