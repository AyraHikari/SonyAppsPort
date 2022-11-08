.class final Lcom/android/quickstep/views/TaskMenuViewWithArrow$addMenuOption$1;
.super Ljava/lang/Object;
.source "TaskMenuViewWithArrow.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskMenuViewWithArrow;->addMenuOption(Lcom/android/launcher3/popup/SystemShortcut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        "view",
        "Landroid/view/View;",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $menuOption:Lcom/android/launcher3/popup/SystemShortcut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow$addMenuOption$1;->$menuOption:Lcom/android/launcher3/popup/SystemShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow$addMenuOption$1;->$menuOption:Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->onClick(Landroid/view/View;)V

    return-void
.end method
