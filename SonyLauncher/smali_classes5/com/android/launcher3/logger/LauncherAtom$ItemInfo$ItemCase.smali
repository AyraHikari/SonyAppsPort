.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1227
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1228
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v4, "TASK"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1229
    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v6, "SHORTCUT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1230
    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v8, "WIDGET"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1231
    new-instance v8, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v10, "FOLDER_ICON"

    const/16 v11, 0x9

    invoke-direct {v8, v10, v9, v11}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1232
    new-instance v10, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v11, "SLICE"

    const/4 v12, 0x5

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1233
    new-instance v11, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v13, "SEARCH_ACTION_ITEM"

    const/4 v14, 0x6

    const/16 v15, 0xb

    invoke-direct {v11, v13, v14, v15}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1234
    new-instance v13, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v15, "ITEM_NOT_SET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    .line 1225
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    aput-object v0, v15, v2

    aput-object v1, v15, v3

    aput-object v4, v15, v5

    aput-object v6, v15, v7

    aput-object v8, v15, v9

    aput-object v10, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

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

    .line 1236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1237
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->value:I

    .line 1238
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1
    .param p0, "value"    # I

    .line 1248
    packed-switch p0, :pswitch_data_0

    .line 1257
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1255
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1254
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1253
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1252
    :pswitch_4
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1251
    :pswitch_5
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1250
    :pswitch_6
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1249
    :pswitch_7
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    .line 1256
    :pswitch_8
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1244
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1225
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    .line 1225
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1262
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->value:I

    return v0
.end method
