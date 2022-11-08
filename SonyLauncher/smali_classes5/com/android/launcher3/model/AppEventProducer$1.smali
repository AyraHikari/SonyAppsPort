.class synthetic Lcom/android/launcher3/model/AppEventProducer$1;
.super Ljava/lang/Object;
.source "AppEventProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/AppEventProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

.field static final synthetic $SwitchMap$com$android$launcher3$logger$LauncherAtom$FolderContainer$ParentContainerCase:[I

.field static final synthetic $SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 265
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->values()[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v5, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    :try_start_5
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    :goto_5
    :try_start_6
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    :try_start_7
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v5

    :goto_7
    :try_start_8
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v5

    :goto_8
    :try_start_9
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v5

    .line 292
    :goto_9
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$FolderContainer$ParentContainerCase:[I

    :try_start_a
    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v5

    :goto_a
    :try_start_b
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$FolderContainer$ParentContainerCase:[I

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v5

    .line 204
    :goto_b
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->values()[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    :try_start_c
    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    sget-object v5, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    return-void
.end method
