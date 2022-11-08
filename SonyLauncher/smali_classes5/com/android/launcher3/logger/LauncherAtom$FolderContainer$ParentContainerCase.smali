.class public final enum Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12524
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    .line 12525
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v4, "HOTSEAT"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    .line 12526
    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v6, "TASKBAR"

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-direct {v4, v6, v7, v8}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    .line 12527
    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v8, "PARENTCONTAINER_NOT_SET"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v2}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    .line 12522
    new-array v3, v3, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12530
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    .line 12531
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I

    .line 12541
    packed-switch p0, :pswitch_data_0

    .line 12546
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 12544
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0

    .line 12543
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0

    .line 12542
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0

    .line 12545
    :pswitch_4
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12537
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12522
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    .line 12522
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 12551
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    return v0
.end method
