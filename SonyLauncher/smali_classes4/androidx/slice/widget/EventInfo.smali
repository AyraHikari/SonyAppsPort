.class public Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/EventInfo$SliceButtonPosition;,
        Landroidx/slice/widget/EventInfo$SliceActionType;,
        Landroidx/slice/widget/EventInfo$SliceRowType;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_BUTTON:I = 0x1

.field public static final ACTION_TYPE_CONTENT:I = 0x3

.field public static final ACTION_TYPE_DATE_PICK:I = 0x6

.field public static final ACTION_TYPE_SEE_MORE:I = 0x4

.field public static final ACTION_TYPE_SELECTION:I = 0x5

.field public static final ACTION_TYPE_SLIDER:I = 0x2

.field public static final ACTION_TYPE_TIME_PICK:I = 0x7

.field public static final ACTION_TYPE_TOGGLE:I = 0x0

.field public static final POSITION_CELL:I = 0x2

.field public static final POSITION_END:I = 0x1

.field public static final POSITION_START:I = 0x0

.field public static final ROW_TYPE_DATE_PICK:I = 0x7

.field public static final ROW_TYPE_GRID:I = 0x1

.field public static final ROW_TYPE_LIST:I = 0x0

.field public static final ROW_TYPE_MESSAGING:I = 0x2

.field public static final ROW_TYPE_PROGRESS:I = 0x5

.field public static final ROW_TYPE_SELECTION:I = 0x6

.field public static final ROW_TYPE_SHORTCUT:I = -0x1

.field public static final ROW_TYPE_SLIDER:I = 0x4

.field public static final ROW_TYPE_TIME_PICK:I = 0x8

.field public static final ROW_TYPE_TOGGLE:I = 0x3

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public actionType:I

.field public rowIndex:I

.field public rowTemplateType:I

.field public sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "sliceMode"    # I
    .param p2, "actionType"    # I
    .param p3, "rowTemplateType"    # I
    .param p4, "rowIndex"    # I

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 247
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 248
    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 249
    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 253
    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 254
    iput v0, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 255
    return-void
.end method

.method private static actionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .line 305
    packed-switch p0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :pswitch_0
    const-string v0, "TIME_PICK"

    return-object v0

    .line 319
    :pswitch_1
    const-string v0, "DATE_PICK"

    return-object v0

    .line 317
    :pswitch_2
    const-string v0, "SELECTION"

    return-object v0

    .line 315
    :pswitch_3
    const-string v0, "SEE MORE"

    return-object v0

    .line 313
    :pswitch_4
    const-string v0, "CONTENT"

    return-object v0

    .line 311
    :pswitch_5
    const-string v0, "SLIDER"

    return-object v0

    .line 309
    :pswitch_6
    const-string v0, "BUTTON"

    return-object v0

    .line 307
    :pswitch_7
    const-string v0, "TOGGLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static positionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .line 289
    packed-switch p0, :pswitch_data_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_0
    const-string v0, "CELL"

    return-object v0

    .line 293
    :pswitch_1
    const-string v0, "END"

    return-object v0

    .line 291
    :pswitch_2
    const-string v0, "START"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static rowTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 331
    packed-switch p0, :pswitch_data_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown row type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_0
    const-string v0, "TIME_PICK"

    return-object v0

    .line 349
    :pswitch_1
    const-string v0, "DATE_PICK"

    return-object v0

    .line 347
    :pswitch_2
    const-string v0, "SELECTION"

    return-object v0

    .line 345
    :pswitch_3
    const-string v0, "PROGRESS"

    return-object v0

    .line 343
    :pswitch_4
    const-string v0, "SLIDER"

    return-object v0

    .line 341
    :pswitch_5
    const-string v0, "TOGGLE"

    return-object v0

    .line 337
    :pswitch_6
    const-string v0, "MESSAGING"

    return-object v0

    .line 335
    :pswitch_7
    const-string v0, "GRID"

    return-object v0

    .line 333
    :pswitch_8
    const-string v0, "LIST"

    return-object v0

    .line 339
    :pswitch_9
    const-string v0, "SHORTCUT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setPosition(III)V
    .locals 0
    .param p1, "actionPosition"    # I
    .param p2, "actionIndex"    # I
    .param p3, "actionCount"    # I

    .line 266
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 267
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 268
    iput p3, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 269
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    invoke-static {v2}, Landroidx/slice/widget/SliceView;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-static {v2}, Landroidx/slice/widget/EventInfo;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", rowTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    invoke-static {v2}, Landroidx/slice/widget/EventInfo;->rowTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", rowIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", actionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    invoke-static {v2}, Landroidx/slice/widget/EventInfo;->positionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
