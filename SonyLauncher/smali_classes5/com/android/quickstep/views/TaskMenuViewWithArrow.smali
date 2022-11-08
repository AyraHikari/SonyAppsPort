.class public final Lcom/android/quickstep/views/TaskMenuViewWithArrow;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "TaskMenuViewWithArrow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskMenuViewWithArrow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskMenuViewWithArrow.kt\ncom/android/quickstep/views/TaskMenuViewWithArrow\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1849#2,2:345\n*S KotlinDebug\n*F\n+ 1 TaskMenuViewWithArrow.kt\ncom/android/quickstep/views/TaskMenuViewWithArrow\n*L\n168#1:345,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 A*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001AB\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0017\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB\u001f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\"\u001a\u00020#H\u0014J\u0014\u0010$\u001a\u00020#2\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030&H\u0002J\u0008\u0010\'\u001a\u00020#H\u0002J\u0008\u0010(\u001a\u00020#H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020#H\u0014J\u0010\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\u001dH\u0002J\u0012\u00101\u001a\u00020#2\u0008\u00102\u001a\u0004\u0018\u00010/H\u0014J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000bH\u0014J\u0012\u00105\u001a\u00020\u000e2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0010\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020:H\u0014J\u0010\u0010;\u001a\u00020#2\u0006\u00109\u001a\u00020:H\u0014J\u0008\u0010<\u001a\u00020#H\u0014J\u0008\u0010=\u001a\u00020#H\u0014J\u001c\u0010>\u001a\u00020\u000e2\n\u0010\u001e\u001a\u00060\u001fR\u00020 2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010?\u001a\u00020\u000eH\u0002J\u0008\u0010@\u001a\u00020#H\u0014R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00060\u001fR\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/android/quickstep/views/TaskMenuViewWithArrow;",
        "T",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        "Lcom/android/launcher3/popup/ArrowPopup;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "alignSecondRow",
        "",
        "arrowHorizontalPadding",
        "getArrowHorizontalPadding",
        "()I",
        "extraSpaceForSecondRowAlignment",
        "getExtraSpaceForSecondRowAlignment",
        "iconView",
        "Lcom/android/quickstep/views/IconView;",
        "menuWidth",
        "optionLayout",
        "Landroid/widget/LinearLayout;",
        "optionMeasuredHeight",
        "scrim",
        "Landroid/view/View;",
        "scrimAlpha",
        "",
        "taskContainer",
        "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
        "Lcom/android/quickstep/views/TaskView;",
        "taskView",
        "addArrow",
        "",
        "addMenuOption",
        "menuOption",
        "Lcom/android/launcher3/popup/SystemShortcut;",
        "addMenuOptions",
        "addScrim",
        "assignMarginsAndBackgrounds",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "closeComplete",
        "copyIconToDragLayer",
        "insets",
        "Landroid/graphics/Rect;",
        "getArrowX",
        "getTargetObjectLocation",
        "outPos",
        "isOfType",
        "type",
        "onControllerInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onCreateCloseAnimation",
        "anim",
        "Landroid/animation/AnimatorSet;",
        "onCreateOpenAnimation",
        "onFinishInflate",
        "orientAboutObject",
        "populateAndShowForTask",
        "populateMenu",
        "updateArrowColor",
        "Companion",
        "packages__apps__Launcher3__android_common__Launcher3QuickStepLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;

.field public static final TAG:Ljava/lang/String; = "TaskMenuViewWithArrow"


# instance fields
.field private alignSecondRow:Z

.field private iconView:Lcom/android/quickstep/views/IconView;

.field private final menuWidth:I

.field private optionLayout:Landroid/widget/LinearLayout;

.field private optionMeasuredHeight:I

.field private scrim:Landroid/view/View;

.field private final scrimAlpha:F

.field private taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

.field private taskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->Companion:Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;)V

    .line 73
    nop

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setClipToOutline(Z)V

    .line 76
    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->shouldScaleArrow:Z

    .line 78
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_START_DELAY:I

    .line 79
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_DURATION:I

    .line 80
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_START_DELAY:I

    .line 81
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_DURATION:I

    .line 82
    nop

    .line 87
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->task_menu_width_grid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->menuWidth:I

    .line 102
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrimAlpha:F

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    nop

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setClipToOutline(Z)V

    .line 76
    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->shouldScaleArrow:Z

    .line 78
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_START_DELAY:I

    .line 79
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_DURATION:I

    .line 80
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_START_DELAY:I

    .line 81
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_DURATION:I

    .line 82
    nop

    .line 87
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->task_menu_width_grid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->menuWidth:I

    .line 102
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrimAlpha:F

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    nop

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setClipToOutline(Z)V

    .line 76
    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->shouldScaleArrow:Z

    .line 78
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_START_DELAY:I

    .line 79
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_CHILD_FADE_DURATION:I

    .line 80
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_START_DELAY:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_START_DELAY:I

    .line 81
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_CHILD_FADE_DURATION:I

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_FADE_DURATION:I

    .line 82
    nop

    .line 87
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->task_menu_width_grid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->menuWidth:I

    .line 102
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrimAlpha:F

    .line 71
    return-void
.end method

.method public static final synthetic access$populateAndShowForTask(Lcom/android/quickstep/views/TaskMenuViewWithArrow;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/quickstep/views/TaskMenuViewWithArrow;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .param p2, "alignSecondRow"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->populateAndShowForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z

    move-result v0

    return v0
.end method

.method private final addMenuOption(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 4
    .param p1, "menuOption"    # Lcom/android/launcher3/popup/SystemShortcut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    sget v1, Lcom/android/quickstep/KtR$layout;->task_view_menu_option:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .local v0, "menuOptionView":Landroid/widget/LinearLayout;
    nop

    .line 193
    sget v1, Lcom/android/launcher3/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 194
    sget v2, Lcom/android/launcher3/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    .line 196
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->menuWidth:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 198
    new-instance v2, Lcom/android/quickstep/views/TaskMenuViewWithArrow$addMenuOption$1;

    invoke-direct {v2, p1}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$addMenuOption$1;-><init>(Lcom/android/launcher3/popup/SystemShortcut;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    const-string v2, "optionLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    return-void

    .line 196
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "menuOptionView":Landroid/widget/LinearLayout;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final addMenuOptions()V
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskView:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "taskView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v3, :cond_1

    const-string v3, "taskContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-static {v0, v2, v3}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v0

    const-string v2, "getEnabledShortcuts(task\u2026ceProfile, taskContainer)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 168
    nop

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 345
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/popup/SystemShortcut;

    .local v5, "it":Lcom/android/launcher3/popup/SystemShortcut;
    const/4 v6, 0x0

    .line 168
    .local v6, "$i$a$-forEach-TaskMenuViewWithArrow$addMenuOptions$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->addMenuOption(Lcom/android/launcher3/popup/SystemShortcut;)V

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lcom/android/launcher3/popup/SystemShortcut;
    .end local v6    # "$i$a$-forEach-TaskMenuViewWithArrow$addMenuOptions$1":I
    goto :goto_0

    .line 346
    :cond_2
    nop

    .line 171
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    check-cast v2, Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 172
    .local v0, "divider":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/quickstep/KtR$dimen;->task_menu_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 174
    .local v2, "dividerSpacing":I
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionLayout:Landroid/widget/LinearLayout;

    const-string v4, "optionLayout"

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 177
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    const-string v5, "mActivityContext.getOverviewPanel()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    .line 178
    .local v3, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    .line 179
    .local v5, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    const-string v7, "mActivityContext.deviceProfile"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .local v6, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 181
    nop

    .line 182
    iget-object v7, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v7

    .line 183
    :goto_1
    nop

    .line 184
    nop

    .line 180
    invoke-interface {v5, v6, v1, v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setTaskOptionsMenuLayoutOrientation(Lcom/android/launcher3/DeviceProfile;Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V

    .line 186
    return-void
.end method

.method private final addScrim()V
    .locals 5

    .line 143
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$addScrim_u24lambda_u2d0":Landroid/view/View;
    const/4 v2, 0x0

    .line 144
    .local v2, "$i$a$-apply-TaskMenuViewWithArrow$addScrim$1":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    nop

    .line 146
    nop

    .line 144
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {v3, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 150
    nop

    .line 143
    .end local v1    # "$this$addScrim_u24lambda_u2d0":Landroid/view/View;
    .end local v2    # "$i$a$-apply-TaskMenuViewWithArrow$addScrim$1":I
    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrim:Landroid/view/View;

    .line 151
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method private final copyIconToDragLayer(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 239
    new-instance v0, Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/IconView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$copyIconToDragLayer_u24lambda_u2d4":Lcom/android/quickstep/views/IconView;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$a$-apply-TaskMenuViewWithArrow$copyIconToDragLayer$1":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 v5, 0x0

    const-string v6, "taskContainer"

    if-nez v4, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/IconView;->getWidth()I

    move-result v4

    .line 242
    iget-object v7, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v7, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_1
    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/views/IconView;->getHeight()I

    move-result v7

    .line 240
    invoke-direct {v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/IconView;->setX(F)V

    .line 245
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/IconView;->setY(F)V

    .line 246
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v3, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    nop

    .line 248
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v3, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_3
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/IconView;->getDrawableWidth()I

    move-result v3

    .line 249
    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v4, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v5, v4

    :goto_0
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/IconView;->getDrawableHeight()I

    move-result v4

    .line 247
    invoke-virtual {v1, v3, v4}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    .line 251
    nop

    .line 239
    .end local v1    # "$this$copyIconToDragLayer_u24lambda_u2d4":Lcom/android/quickstep/views/IconView;
    .end local v2    # "$i$a$-apply-TaskMenuViewWithArrow$copyIconToDragLayer$1":I
    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->iconView:Lcom/android/quickstep/views/IconView;

    .line 253
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->iconView:Lcom/android/quickstep/views/IconView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method private final getArrowHorizontalPadding()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskView:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_0

    const-string v0, "taskView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/quickstep/KtR$dimen;->task_menu_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getArrowX()F
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowOffsetVertical:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 326
    :goto_0
    return v0
.end method

.method private final getExtraSpaceForSecondRowAlignment()I
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->alignSecondRow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionMeasuredHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final populateAndShowForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z
    .locals 3
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .param p2, "alignSecondRow"    # Z

    .line 129
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const-string v2, "taskContainer.taskView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskView:Lcom/android/quickstep/views/TaskView;

    .line 134
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 135
    iput-boolean p2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->alignSecondRow:Z

    .line 136
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->populateMenu()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->addScrim()V

    .line 138
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->show()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method private final populateMenu()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v0, :cond_0

    const-string v0, "taskContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->addMenuOptions()V

    .line 161
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addArrow()V
    .locals 3

    .line 313
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getArrowX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 315
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionMeasuredHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 316
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getExtraSpaceForSecondRowAlignment()I

    move-result v2

    int-to-float v2, v2

    .line 315
    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 318
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->updateArrowColor()V

    .line 321
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsLeftAligned:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowHeight:I

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 322
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 323
    return-void
.end method

.method public assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    nop

    .line 204
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x112002d

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 207
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 229
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->iconView:Lcom/android/quickstep/views/IconView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Rect;

    .line 107
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    if-nez v1, :cond_0

    const-string v1, "taskContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 108
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 104
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->close(Z)V

    .line 114
    return v0

    .line 117
    :cond_2
    return v1
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 6
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrim:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "it":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 220
    .local v1, "$i$a$-let-TaskMenuViewWithArrow$onCreateCloseAnimation$1":I
    nop

    .line 221
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrimAlpha:F

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 222
    iget v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->CLOSE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 220
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 219
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-TaskMenuViewWithArrow$onCreateCloseAnimation$1":I
    nop

    .line 225
    :goto_0
    return-void
.end method

.method protected onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .locals 6
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrim:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "it":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$a$-let-TaskMenuViewWithArrow$onCreateOpenAnimation$1":I
    nop

    .line 212
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->scrimAlpha:F

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 213
    iget v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->OPEN_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 211
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 210
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-TaskMenuViewWithArrow$onCreateOpenAnimation$1":I
    nop

    .line 216
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->onFinishInflate()V

    .line 122
    sget v0, Lcom/android/quickstep/KtR$id;->menu_option_layout:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(KtR.id.menu_option_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionLayout:Landroid/widget/LinearLayout;

    .line 123
    return-void
.end method

.method protected orientAboutObject()V
    .locals 13

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->measure(II)V

    .line 271
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string v1, "optionLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionMeasuredHeight:I

    .line 272
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowHeight:I

    iget v2, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowOffsetVertical:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getArrowHorizontalPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 274
    .local v1, "extraHorizontalSpace":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 275
    .local v2, "widthWithArrow":I
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    const-string v4, "popupContainer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/InsettableFrameLayout;

    .line 277
    .local v3, "dragLayer":Lcom/android/launcher3/InsettableFrameLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 279
    .local v4, "insets":Landroid/graphics/Rect;
    const-string v5, "insets"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->copyIconToDragLayer(Landroid/graphics/Rect;)V

    .line 283
    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v2

    .line 284
    .local v5, "rightAlignedMenuStartX":I
    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    .line 285
    .local v6, "leftAlignedMenuStartX":I
    iget-boolean v7, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsRtl:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 286
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    if-gez v7, :cond_2

    move v0, v8

    goto :goto_0

    .line 288
    :cond_1
    sub-int v7, v2, v1

    add-int/2addr v7, v6

    iget v9, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    .line 289
    invoke-virtual {v3}, Lcom/android/launcher3/InsettableFrameLayout;->getWidth()I

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-ge v7, v9, :cond_2

    move v0, v8

    .line 285
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsLeftAligned:Z

    .line 292
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    .line 295
    .local v0, "menuStartX":I
    :goto_1
    iget-object v7, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 296
    .local v7, "iconHeight":I
    iget v8, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->optionMeasuredHeight:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 297
    .local v8, "yOffset":I
    iget-object v9, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getExtraSpaceForSecondRowAlignment()I

    move-result v10

    sub-int/2addr v9, v10

    .line 300
    .local v9, "menuStartY":I
    iget v10, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v10

    .line 301
    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 303
    int-to-float v10, v0

    invoke-virtual {p0, v10}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setX(F)V

    .line 304
    int-to-float v10, v9

    invoke-virtual {p0, v10}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setY(F)V

    .line 306
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eqz v10, :cond_5

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v12, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object v11, v12

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .local v11, "arrowLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v12, 0x30

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 309
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 310
    return-void

    .line 307
    .end local v11    # "arrowLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 306
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected updateArrowColor()V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    new-instance v7, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    .line 334
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowWidth:I

    int-to-float v2, v1

    .line 335
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowHeight:I

    int-to-float v3, v1

    .line 336
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowPointRadius:I

    int-to-float v4, v1

    .line 337
    iget-boolean v5, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mIsLeftAligned:Z

    .line 338
    iget v6, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrowColor:I

    .line 333
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFZI)V

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mElevation:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->setElevation(F)V

    .line 341
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->mElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 342
    return-void
.end method
